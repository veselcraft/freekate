.class Lcom/inmobi/commons/core/configs/b$c;
.super Ljava/lang/Object;
.source "ConfigComponent.java"

# interfaces
.implements Lcom/inmobi/commons/core/configs/b$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/inmobi/commons/core/configs/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "c"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/inmobi/commons/core/configs/a;)V
    .locals 0

    .prologue
    .line 85
    check-cast p1, Lcom/inmobi/commons/core/configs/g;

    invoke-static {p1}, Lcom/inmobi/commons/core/configs/b;->a(Lcom/inmobi/commons/core/configs/g;)Lcom/inmobi/commons/core/configs/g;

    .line 86
    return-void
.end method
