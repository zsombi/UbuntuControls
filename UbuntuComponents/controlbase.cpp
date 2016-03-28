#include "controlbase_p.h"

ControlBasePrivate::ControlBasePrivate()
    : QQuickControlPrivate()
{

}

ControlBase::ControlBase(QQuickItem *parent):
    QQuickControl(*(new ControlBasePrivate), parent)
{
    // By default, QQuickItem does not draw anything. If you subclass
    // QQuickItem to create a visual item, you will need to uncomment the
    // following line and re-implement updatePaintNode()

    // setFlag(ItemHasContents, true);
}

ControlBase::ControlBase(ControlBasePrivate &dd, QQuickItem *parent)
    : QQuickControl(dd, parent)
{

}

ControlBase::~ControlBase()
{
}
