.class Lcom/airbnb/lottie/model/layer/TextLayer$1;
.super Landroid/graphics/Paint;
.source "TextLayer.java"


# direct methods
.method constructor <init>(Lcom/airbnb/lottie/model/layer/TextLayer;I)V
    .locals 0

    .line 40
    invoke-direct {p0, p2}, Landroid/graphics/Paint;-><init>(I)V

    .line 41
    sget-object p1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    return-void
.end method
