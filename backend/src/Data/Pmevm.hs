module Data.Pmevm
  ( CPURegister (..)
  , CPURegisterExt (..)
  , CPURegisterPair (..)
  , CPURegisterWord (..)
  , CPUCondition (..)
  , CPUOperation (..)
  , operationCode
  , cpuOperation
  , cpuStep
  , Computer
  , initComputer
  , hl
  , getTicks
  , getPortIn
  , setPortIn
  , getPortOut
  , setPortOut
  , getMemory
  , setMemory
  , isCPUHalted
  , areInterruptsEnabled
  , getPC
  , setPC
  , getRegister
  , getFlag
  , Program (..)
  , setProgram
  ) where

import Data.Pmevm.Native