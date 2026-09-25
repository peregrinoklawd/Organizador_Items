#include "script_version.hpp"

class CfgPatches
{
    class ServoPeregrino_Organizador_Nexus
    {
        name = "SP_ORG — Nexus";
        author = "Claudio Malta Telhada";
        requiredVersion = 2.18;
        requiredAddons[] = {"A3_Functions_F"};
        units[] = {};
        weapons[] = {};
        version = SERVO_PEREGRINO_ORGANIZADOR_NEXUS_SEMANTIC_VERSION;
    };
};

class CfgFunctions
{
    class ServoPeregrino_Organizador_Nexus
    {
        tag = "ServoPeregrino_Organizador_Nexus";

        class Lifecycle
        {
            file = "\ServoPeregrino_Organizador_Nexus\functions\lifecycle";

            class initialize { preInit = 1; };
            class getBuildInfo {};
        };

        class Results
        {
            file = "\ServoPeregrino_Organizador_Nexus\functions\results";

            class createResult {};
            class isResult {};
        };

        class Diagnostics
        {
            file = "\ServoPeregrino_Organizador_Nexus\functions\diagnostics";

            class createDiagnostic {};
            class setLogLevel {};
            class log {};
        };

        class Capabilities
        {
            file = "\ServoPeregrino_Organizador_Nexus\functions\capabilities";

            class registerCapability {};
            class hasCapability {};
            class getCapability {};
            class listCapabilities {};
            class unregisterCapability {};
        };

        class Contracts
        {
            file = "\ServoPeregrino_Organizador_Nexus\functions\contracts";

            class registerContractDefinition {};
            class createContract {};
            class validateContract {};
        };

        class Events
        {
            file = "\ServoPeregrino_Organizador_Nexus\functions\events";

            class subscribeEvent {};
            class unsubscribeEvent {};
            class publishEvent {};
        };

        class Tests
        {
            file = "\ServoPeregrino_Organizador_Nexus\functions\tests";

            class resetRuntimeForTests {};
            class runDelivery1_1Tests {};
            class installTestActions {};
        };

    };
};
