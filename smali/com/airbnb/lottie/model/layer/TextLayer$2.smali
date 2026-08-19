.class Lcom/airbnb/lottie/model/layer/TextLayer$2;
.super Landroid/graphics/Paint;
.source "TextLayer.java"


# direct methods
.method constructor <init>(Lcom/airbnb/lottie/model/layer/TextLayer;I)V
    .locals 0

    .line 43
    invoke-direct {p0, p2}, Landroid/graphics/Paint;-><init>(I)V

    .line 44
    sget-object p1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    return-void
.end method
