#include <QtGui>
#include <QtQuick>
#include <QtWebEngine>

int main(int argc, char *argv[])
{
    QCoreApplication::setAttribute(Qt::AA_EnableHighDpiScaling);
    QGuiApplication app(argc, argv);

    QtWebEngine::initialize();

    QQuickView b;
    b.setResizeMode(QQuickView::SizeRootObjectToView);
    b.resize(800,600);
    b.setPosition(32,32);
    b.setSource(QUrl::fromLocalFile("./main.qml"));
    b.show();

    return app.exec();
}
