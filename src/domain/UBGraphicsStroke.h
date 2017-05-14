/*
 * Copyright (C) 2015-2016 Département de l'Instruction Publique (DIP-SEM)
 *
 * Copyright (C) 2013 Open Education Foundation
 *
 * Copyright (C) 2010-2013 Groupement d'Intérêt Public pour
 * l'Education Numérique en Afrique (GIP ENA)
 *
 * This file is part of OpenBoard.
 *
 * OpenBoard is free software: you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation, version 3 of the License,
 * with a specific linking exception for the OpenSSL project's
 * "OpenSSL" library (or with modified versions of it that use the
 * same license as the "OpenSSL" library).
 *
 * OpenBoard is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with OpenBoard. If not, see <http://www.gnu.org/licenses/>.
 */

#ifndef UBGRAPHICSSTROKE_H_
#define UBGRAPHICSSTROKE_H_

#include <QtGui>
#include <QPainterPath>

#include "core/UB.h"
#include "UBItem.h"

typedef QPair<QPointF, qreal> strokePoint;

class UBGraphicsStroke : public QObject, public UBItem, public UBGraphicsItem
{
    friend class UBGraphicsPolygonItem;

    public:
        UBGraphicsStroke();
        UBGraphicsStroke(QList<QPolygonF> polygons);

        virtual ~UBGraphicsStroke();

        UBGraphicsStroke *deepCopy();

        bool hasAlpha() const;

        QList<QPair<QPointF, qreal> > addPoint(const QPointF& point, qreal width);

        const QList<QPair<QPointF, qreal> >& points() { return mDrawnPoints; }

        void simplify();


    private:
        QList<QPolygonF> mPolygons;

        /// Points that were drawn by the user (i.e, actually received through input device)
        QList<QPair<QPointF, qreal> > mReceivedPoints;

        /// All the points (including interpolated) that are used to draw the stroke
        QList<QPair<QPointF, qreal> > mDrawnPoints;

        QPainterPath mPath;

        QColor mColorOnDarkBackground;
        QColor mColorOnLightBackground;

        qreal mAntiScaleRatio;
};

#endif /* UBGRAPHICSSTROKE_H_ */
