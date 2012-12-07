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
Date                   :=12/07/12
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
LinkOptions            :=  -shared
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
CXXFLAGS :=  -O3 -std=c++11 -c $(Preprocessors)
CFLAGS   :=   $(Preprocessors)


##
## User defined environment variables
##
CodeLiteDir:=c:\Program Files (x86)\CodeLite
WXWIN:=C:\wxWidgets
UNIT_TEST_PP_SRC_DIR:=C:\UnitTest++-1.3
WXCFG:=gcc_dll\mswu
Objects=$(IntermediateDirectory)/LuaContext$(ObjectSuffix) 

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
$(IntermediateDirectory)/LuaContext$(ObjectSuffix): LuaContext.cpp $(IntermediateDirectory)/LuaContext$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "D:/Vee/Software/GitHub/OHWorkspace/SSVLuaWrapper/LuaContext.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/LuaContext$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/LuaContext$(DependSuffix): LuaContext.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/LuaContext$(ObjectSuffix) -MF$(IntermediateDirectory)/LuaContext$(DependSuffix) -MM "D:/Vee/Software/GitHub/OHWorkspace/SSVLuaWrapper/LuaContext.cpp"

$(IntermediateDirectory)/LuaContext$(PreprocessSuffix): LuaContext.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/LuaContext$(PreprocessSuffix) "D:/Vee/Software/GitHub/OHWorkspace/SSVLuaWrapper/LuaContext.cpp"


-include $(IntermediateDirectory)/*$(DependSuffix)
##
## Clean
##
clean:
	$(RM) $(IntermediateDirectory)/LuaContext$(ObjectSuffix)
	$(RM) $(IntermediateDirectory)/LuaContext$(DependSuffix)
	$(RM) $(IntermediateDirectory)/LuaContext$(PreprocessSuffix)
	$(RM) $(OutputFile)
	$(RM) $(OutputFile)
	$(RM) "D:\Vee\Software\GitHub\OHWorkspace\.build-release\SSVLuaWrapper"


