#ifndef ATEXTUREMAP_H
#define ATEXTUREMAP_H

#include <QMap>
#include <QPixmap>

class ATextureMap : public QMap<int,QPixmap>
{

    public:
                ATextureMap(QString textureFile)
        {

            this->pushBack(textureFile);

        }
                ATextureMap(QPixmap texture)
        {

            this->pushBack(texture);

        }
        void    pushBack(QString textureFile)
        {

            this->pushBack(QPixmap(textureFile));

        }
        void    pushBack(QPixmap texture)
        {

            this->insert(this->size(),texture);

        }

};

#endif // ATEXTUREMAP_H
