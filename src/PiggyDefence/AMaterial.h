#ifndef AMATERIAL_H
#define AMATERIAL_H

#include "ATextureMap.h"

class AMaterial
{

    public:
                        AMaterial(void)
        {

            this->setTexture(NULL);
            this->setHealth(-1);

        }
                        AMaterial(ATextureMap* texture, int health)
        {

            this->setTexture(texture);
            this->setHealth(health);

        }
        ATextureMap*    getTexture(void) const
        {

            return this->texture;

        }
        int             getHealth(void) const
        {

            return this->health;

        }
        void            setTexture(ATextureMap* texture)
        {

            this->texture = texture;

        }
        void            setHealth(int health)
        {

            //  Lowest correct health is `-1`
            this->health = health > -2 ? health : -1;

        }

    protected:
        ATextureMap*    texture;
        int             health;

};

#endif // AMATERIAL_H
