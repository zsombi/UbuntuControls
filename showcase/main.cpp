#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include <QProcess>
#include <QDebug>

int main(int argc, char *argv[])
{
    QGuiApplication app(argc, argv);

    foreach (const QString &var, QProcess::systemEnvironment()) {
        qDebug() << "ENV: " << var;
    }

    QQmlApplicationEngine engine;
    engine.load(QUrl(QStringLiteral("qrc:/main.qml")));

    return app.exec();
}
