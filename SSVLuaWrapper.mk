##
## Auto Generated makefile by CodeLite IDE
## any manual changes will be erased      
##
## Release
ProjectName            :=SSVLuaWrapper
ConfigurationName      :=Release
WorkspacePath          := "D:\Vee\Software\GitHub\OHWorkspace"
ProjectPath            := "D:\Vee\Software\GitHub\OHWorkspace\SSVLuaWrapper"
IntermediateDirectory  :=./_INTERMEDIATE
OutDir                 := $(IntermediateDirectory)
CurrentFileName        :=
CurrentFilePath        :=
CurrentFileFullPath    :=
User                   :=vittorio.romeo
Date                   :=21/03/2013
CodeLitePath           :="C:\Program Files (x86)\CodeLite"
LinkerName             :=g++
SharedObjectLinkerName :=g++ -shared -fPIC
ObjectSuffix           :=.o
DependSuffix           :=.o.d
PreprocessSuffix       :=.o.i
DebugSwitch            :=-g 
IncludeSwitch          :=-I
LibrarySwitch          :=-l
OutputSwitch           :=-o 
LibraryPathSwitch      :=-L
PreprocessorSwitch     :=-D
SourceSwitch           :=-c 
OutputFile             :=./_RELEASE/$(ProjectName).dll
Preprocessors          :=
ObjectSwitch           :=-o 
ArchiveOutputSwitch    := 
PreprocessOnlySwitch   :=-E
ObjectsFileList        :="SSVLuaWrapper.txt"
PCHCompileFlags        :=
MakeDirCommand         :=makedir
RcCmpOptions           := 
RcCompilerName         :=windres
LinkOptions            :=  -shared
IncludePath            :=  $(IncludeSwitch). $(IncludeSwitch)./include/ $(IncludeSwitch)C:/lua/include/ $(IncludeSwitch)C:/lua/ 
IncludePCH             := 
RcIncludePath          := 
Libs                   := $(LibrarySwitch)lua5.1 $(LibrarySwitch)lua51 
ArLibs                 :=  "lua5.1" "lua51" 
LibPath                := $(LibraryPathSwitch). $(LibraryPathSwitch)C:/lua/ 

##
## Common variables
## AR, CXX, CC, CXXFLAGS and CFLAGS can be overriden using an environment variables
##
AR       := ar rcus
CXX      := g++
CC       := gcc
CXXFLAGS :=  -W -s -pedantic -O3 -Wextra -std=c++11 -Wall $(Preprocessors)
CFLAGS   :=   $(Preprocessors)


##
## User defined environment variables
##
CodeLiteDir:=C:\Program Files (x86)\CodeLite
UNIT_TEST_PP_SRC_DIR:=C:\UnitTest++-1.3
WXWIN:=C:\wxWidgets-2.9.4
WXCFG:=gcc_dll\mswu
Objects0=$(IntermediateDirectory)/LuaContext_LuaContext$(ObjectSuffix) 

Objects=$(Objects0) 

##
## Main Build Targets 
##
.PHONY: all clean PreBuild PrePreBuild PostBuild
all: $(OutputFile)

$(OutputFile): $(IntermediateDirectory)/.d $(Objects) 
	@$(MakeDirCommand) $(@D)
	@echo "" > $(IntermediateDirectory)/.d
	@echo $(Objects0)  > $(ObjectsFileList)
	$(SharedObjectLinkerName) $(OutputSwitch)$(OutputFile) $(Objects) $(LibPath) $(Libs) $(LinkOptions)
	@$(MakeDirCommand) "D:\Vee\Software\GitHub\OHWorkspace/.build-release"
	@echo rebuilt > "D:\Vee\Software\GitHub\OHWorkspace/.build-release/SSVLuaWrapper"

$(IntermediateDirectory)/.d:
	@$(MakeDirCommand) "./_INTERMEDIATE"

PreBuild:


##
## Objects
##
$(IntermediateDirectory)/LuaContext_LuaContext$(ObjectSuffix): src/SSVLuaWrapper/LuaContext/LuaContext.cpp $(IntermediateDirectory)/LuaContext_LuaContext$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "D:/Vee/Software/GitHub/OHWorkspace/SSVLuaWrapper/src/SSVLuaWrapper/LuaContext/LuaContext.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/LuaContext_LuaContext$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/LuaContext_LuaContext$(DependSuffix): src/SSVLuaWrapper/LuaContext/LuaContext.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/LuaContext_LuaContext$(ObjectSuffix) -MF$(IntermediateDirectory)/LuaContext_LuaContext$(DependSuffix) -MM "src/SSVLuaWrapper/LuaContext/LuaContext.cpp"

$(IntermediateDirectory)/LuaContext_LuaContext$(PreprocessSuffix): src/SSVLuaWrapper/LuaContext/LuaContext.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/LuaContext_LuaContext$(PreprocessSuffix) "src/SSVLuaWrapper/LuaContext/LuaContext.cpp"


-include $(IntermediateDirectory)/*$(DependSuffix)
##
## Clean
##
clean:
	$(RM) $(IntermediateDirectory)/LuaContext_LuaContext$(ObjectSuffix)
	$(RM) $(IntermediateDirectory)/LuaContext_LuaContext$(DependSuffix)
	$(RM) $(IntermediateDirectory)/LuaContext_LuaContext$(PreprocessSuffix)
	$(RM) $(OutputFile)
	$(RM) $(OutputFile)
	$(RM) "../.build-release/SSVLuaWrapper"


