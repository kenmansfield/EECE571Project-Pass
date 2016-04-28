'''
Created on Apr 12, 2016

@author: km
'''
import sys
import subprocess
import imp
import os
import time
import numpy
import copy

inputFile = 'inputParameters.txt'
outputFile = 'outputParameters.txt'
#outputParameters.txt
finalResults = []

blackScholes = ['blackscholes', '1 testData.txt origOutput.txt', '1 testData.txt perfOutput.txt']
canneal = ['canneal', '1 100 300 someNets.txt 2 origOutput.txt', '1 100 300 someNets.txt 2 perfOutput.txt']
fluidanimate = ['fluidanimate', '1 1 in.txt origOutput.txt', '1 1 in.txt perfOutput.txt']

def loadModule(appInfo):
    passDir='../../../pass/' + appInfo[0] + '/'
    fullPath = os.getcwd() +'/' + passDir
    print "path = " + fullPath
     
    file_object = open(fullPath + inputFile, 'w')
    #target = open(inputFile, )
    file_object.write("0 -2")
    file_object.close()
    
    #build and run non-perforated app
    subprocess.call('echo $HOME', shell=True)
    subprocess.call(['make', 'clean'], cwd=passDir)
    subprocess.call(['make'], cwd=passDir)
    
    #execute non-perforated.
    command = './' + appInfo[0] + '.op'
    print 'calling command ' + command
    
    start = time.time()
    process = subprocess.Popen(command + ' ' + appInfo[1], cwd=passDir, shell=True)
    process.communicate()
    end = time.time()
    
    results = []
    origTime = end - start
    results.append(origTime)
    results.append(0.0)
   
    #now read outputFile which has all the loops.
    loopInfo = []
    for line in open(fullPath + outputFile, 'r'):
        loopInfo.append([int(x) for x in line.split()])
    
    tempOnes =', '.join(map(str, numpy.ones(len(loopInfo)))) 
    results.append(tempOnes)
    finalResults.append(results)
    
    #now need an algorithm to modify one item at a time.
    optimizeList = list()
    for item in loopInfo:
        optimizeList.append(item[1])
            
    #50% perforation        
    doOneAtATime(command, appInfo, passDir, fullPath, optimizeList, 1, origTime)
    #66% perforation
    doOneAtATime(command, appInfo, passDir, fullPath, optimizeList, 2, origTime)
        
def doOneAtATime(command, appInfo, passDir, fullPath, optimizeList, perfFactor, origTime):
    previousSet = copy.deepcopy(optimizeList)
    for i in range(len(optimizeList)):
        # first make a copy
        newPass = copy.deepcopy(optimizeList)
        if newPass[i] != -1:
            newPass[i] += perfFactor
            result = optimize(command, appInfo, passDir, fullPath, newPass, origTime)
            if result == 0:
                # pass failed, so exclude it
                optimizeList[i] = -1
                
    # By now we should have a final set of optimizations.
    # print out both to compare
    print "\n*** this is our previous set***\n"
    print previousSet
    print "\n ** this is our new set\n"
    print optimizeList
    print "\n********"
    
    
def optimize(command, appInfo, passDir, fullPath, premLoop, origTime):
    #call perforated.
    #todo: need to remake, with perforation
    subprocess.call(['rm', 'perfOutput.txt'], cwd=passDir)
    file_object = open(fullPath + inputFile, 'w')
    
    for i in range(len(premLoop)):
        s = str(i) + ' ' + str(premLoop[i]) + '\n'
        file_object.write(s)
        
    file_object.close()
    
    subprocess.call(['make', 'clean'], cwd=passDir)
    subprocess.call(['make'], cwd=passDir)
    
    #now lets execute our newly perforated code.
    start = time.time()
    process = subprocess.Popen(command + ' ' + appInfo[2], cwd=passDir, shell=True)
    process.communicate()
    end = time.time()
    results = []
    newTime = end - start
    results.append(newTime)

    #now test it!
    modl = imp.load_source('eval', passDir + "evaluate.py")
    score = modl.score(fullPath + 'origOutput.txt', passDir + 'perfOutput.txt')    
    print score
    results.append(score)
    results.append(', '.join(map(str, premLoop)))
    finalResults.append(results)
    if score > 0.8:
        return 0
    elif newTime > (origTime * 1.005):
        # if new time is at least .05% longer. added 1% because execution times
        # vary so much, especially if running this in a VM
        return 0 
    
    return 1
    

def mainEntry():
    #passDir='../../../pass/'
    print 'Number of arguments:', len(sys.argv), 'arguments.'
    print 'Argument List:', str(sys.argv)
    
    progStart = time.time()
    
    # uncomments a line below to perform that test.
    loadModule(blackScholes)
    #loadModule(canneal)
    #loadModule(fluidanimate)
    
    
    print "\n\n***Final results below***\n\n"

    for a in finalResults:
        print ', '.join(str(x) for x in a)
        
    progtime = time.time() - progStart
    print "\n***Total Time"
    print progtime

if __name__ == '__main__':
    mainEntry()