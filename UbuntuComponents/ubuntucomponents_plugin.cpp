#include "ubuntucomponents_plugin.h"
#include "controlbase.h"

#include <qqml.h>

void UbuntuComponentsPlugin::registerTypes(const char *uri)
{
    // @uri com.ubuntu.components
    qmlRegisterType<ControlBase>(uri, 2, 0, "ControlBase");
}

