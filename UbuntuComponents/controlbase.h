#ifndef CONTROLBASE_H
#define CONTROLBASE_H

#include <QtLabsTemplates/private/qquickcontrol_p.h>

class ControlBasePrivate;
class ControlBase : public QQuickControl
{
    Q_OBJECT
    Q_DISABLE_COPY(ControlBase)

public:
    ControlBase(QQuickItem *parent = 0);
    ~ControlBase();

protected:
    ControlBase(ControlBasePrivate &dd, QQuickItem *parent);
};

#endif // CONTROLBASE_H
