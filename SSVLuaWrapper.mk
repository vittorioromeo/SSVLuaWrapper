##
## Auto Generated makefile by CodeLite IDE
## any manual changes will be erased      
##
## Release
ProjectName            :=SSVLuaWrapper
ConfigurationName      :=Release
WorkspacePath          := "D:\Vee\Software\GitHub\OHWorkspace"
ProjectPath            := "D:\Vee\Software\GitHub\OHWorkspace\SSVLuaWrapper"
IntermediateDirectory  :=./Release
OutDir                 := $(IntermediateDirectory)
CurrentFileName        :=
CurrentFilePath        :=
CurrentFileFullPath    :=
User                   :=Vittorio
Date                   :=11/27/12
CodeLitePath           :="c:\Program Files (x86)\CodeLite"
LinkerName             :=g++
SharedObjectLinkerName :=g++ -shared -fPIC
ObjectSuffix           :=.o
DependSuffix           :=.o.d
PreprocessSuffix       :=.o.i
DebugSwitch            :=-gstab
IncludeSwitch          :=-I
LibrarySwitch          :=-l
OutputSwitch           :=-o 
LibraryPathSwitch      :=-L
PreprocessorSwitch     :=-D
SourceSwitch           :=-c 
OutputFile             :=$(IntermediateDirectory)/$(ProjectName).dll
Preprocessors          :=
ObjectSwitch           :=-o 
ArchiveOutputSwitch    := 
PreprocessOnlySwitch   :=-E 
ObjectsFileList        :="D:\Vee\Software\GitHub\OHWorkspace\SSVLuaWrapper\SSVLuaWrapper.txt"
PCHCompileFlags        :=
MakeDirCommand         :=makedir
RcCmpOptions           := 
RcCompilerName         :=windres
LinkOptions            :=  -O2
IncludePath            :=  $(IncludeSwitch). $(IncludeSwitch)C:/lua/include 
IncludePCH             := 
RcIncludePath          := 
Libs                   := $(LibrarySwitch)lua5.1 $(LibrarySwitch)lua51 
ArLibs                 :=  "lua5.1" "lua51" 
LibPath                := $(LibraryPathSwitch). $(LibraryPathSwitch)./Release 

##
## Common variables
## AR, CXX, CC, CXXFLAGS and CFLAGS can be overriden using an environment variables
##
AR       := ar rcus
CXX      := g++
CC       := gcc
CXXFLAGS :=  -O3 -c -std=c++11 $(Preprocessors)
CFLAGS   :=   $(Preprocessors)


##
## User defined environment variables
##
CodeLiteDir:=c:\Program Files (x86)\CodeLite
WXWIN:=C:\wxWidgets
UNIT_TEST_PP_SRC_DIR:=C:\UnitTest++-1.3
WXCFG:=gcc_dll\mswu
Objects=$(IntermediateDirectory)/SSVOpenHexagon_LuaContext$(ObjectSuffix) 

##
## Main Build Targets 
##
.PHONY: all clean PreBuild PrePreBuild PostBuild
all: $(OutputFile)

$(OutputFile): $(IntermediateDirectory)/.d $(Objects) 
	@$(MakeDirCommand) $(@D)
	@echo "" > $(IntermediateDirectory)/.d
	@echo $(Objects) > $(ObjectsFileList)
	$(SharedObjectLinkerName) $(OutputSwitch)$(OutputFile) @$(ObjectsFileList) $(LibPath) $(Libs) $(LinkOptions)
	@$(MakeDirCommand) "D:\Vee\Software\GitHub\OHWorkspace\.build-release"
	@echo rebuilt > "D:\Vee\Software\GitHub\OHWorkspace\.build-release\SSVLuaWrapper"

$(IntermediateDirectory)/.d:
	@$(MakeDirCommand) "./Release"

PreBuild:


##
## Objects
##
$(IntermediateDirectory)/SSVOpenHexagon_LuaContext$(ObjectSuffix): ../SSVOpenHexagon/LuaContext.cpp $(IntermediateDirectory)/SSVOpenHexagon_LuaContext$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "D:/Vee/Software/GitHub/OHWorkspace/SSVOpenHexagon/LuaContext.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/SSVOpenHexagon_LuaContext$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/SSVOpenHexagon_LuaContext$(DependSuffix): ../SSVOpenHexagon/LuaContext.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/SSVOpenHexagon_LuaContext$(ObjectSuffix) -MF$(IntermediateDirectory)/SSVOpenHexagon_LuaContext$(DependSuffix) -MM "D:/Vee/Software/GitHub/OHWorkspace/SSVOpenHexagon/LuaContext.cpp"

$(IntermediateDirectory)/SSVOpenHexagon_LuaContext$(PreprocessSuffix): ../SSVOpenHexagon/LuaContext.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/SSVOpenHexagon_LuaContext$(PreprocessSuffix) "D:/Vee/Software/GitHub/OHWorkspace/SSVOpenHexagon/LuaContext.cpp"


-include $(IntermediateDirectory)/*$(DependSuffix)
##
## Clean
##
clean:
	$(RM) $(IntermediateDirectory)/SSVOpenHexagon_LuaContext$(ObjectSuffix)
	$(RM) $(IntermediateDirectory)/SSVOpenHexagon_LuaContext$(DependSuffix)
	$(RM) $(IntermediateDirectory)/SSVOpenHexagon_LuaContext$(PreprocessSuffix)
	$(RM) $(OutputFile)
	$(RM) $(OutputFile)
	$(RM) "D:\Vee\Software\GitHub\OHWorkspace\.build-release\SSVLuaWrapper"


