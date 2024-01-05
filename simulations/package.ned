package aodvbasic.simulations;

@license(LGPL);

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.physicallayer.wireless.unitdisk.UnitDiskRadioMedium;
import inet.node.inet.WirelessHost;
import inet.node.inet.AdhocHost;

network AODVNetworkBasic
{
    parameters:

    submodules:
        configurator: Ipv4NetworkConfigurator {
            @display("p=369,98");
        }
        radioMedium: UnitDiskRadioMedium {
            @display("p=115,74");
        }
        hostA: AdhocHost {
            @display("p=209,217");
        }
        hostB: AdhocHost {
            @display("p=624,232");
        }
}
network AODVNetworkMultiNode
{
    parameters:
        int numNode;

    submodules:
        configurator: Ipv4NetworkConfigurator;
        radioMedium: UnitDiskRadioMedium;
        node[numNode]: AdhocHost;
}
