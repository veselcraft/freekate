.class public final enum Lcom/perm/kate/imagezoom/ImageViewTouchBase$Command;
.super Ljava/lang/Enum;
.source "ImageViewTouchBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perm/kate/imagezoom/ImageViewTouchBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401c
    name = "Command"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/perm/kate/imagezoom/ImageViewTouchBase$Command;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/perm/kate/imagezoom/ImageViewTouchBase$Command;

.field public static final enum Center:Lcom/perm/kate/imagezoom/ImageViewTouchBase$Command;

.field public static final enum Layout:Lcom/perm/kate/imagezoom/ImageViewTouchBase$Command;

.field public static final enum Move:Lcom/perm/kate/imagezoom/ImageViewTouchBase$Command;

.field public static final enum Reset:Lcom/perm/kate/imagezoom/ImageViewTouchBase$Command;

.field public static final enum Zoom:Lcom/perm/kate/imagezoom/ImageViewTouchBase$Command;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 23
    new-instance v0, Lcom/perm/kate/imagezoom/ImageViewTouchBase$Command;

    const-string v1, "Center"

    invoke-direct {v0, v1, v2}, Lcom/perm/kate/imagezoom/ImageViewTouchBase$Command;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/perm/kate/imagezoom/ImageViewTouchBase$Command;->Center:Lcom/perm/kate/imagezoom/ImageViewTouchBase$Command;

    new-instance v0, Lcom/perm/kate/imagezoom/ImageViewTouchBase$Command;

    const-string v1, "Move"

    invoke-direct {v0, v1, v3}, Lcom/perm/kate/imagezoom/ImageViewTouchBase$Command;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/perm/kate/imagezoom/ImageViewTouchBase$Command;->Move:Lcom/perm/kate/imagezoom/ImageViewTouchBase$Command;

    new-instance v0, Lcom/perm/kate/imagezoom/ImageViewTouchBase$Command;

    const-string v1, "Zoom"

    invoke-direct {v0, v1, v4}, Lcom/perm/kate/imagezoom/ImageViewTouchBase$Command;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/perm/kate/imagezoom/ImageViewTouchBase$Command;->Zoom:Lcom/perm/kate/imagezoom/ImageViewTouchBase$Command;

    new-instance v0, Lcom/perm/kate/imagezoom/ImageViewTouchBase$Command;

    const-string v1, "Layout"

    invoke-direct {v0, v1, v5}, Lcom/perm/kate/imagezoom/ImageViewTouchBase$Command;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/perm/kate/imagezoom/ImageViewTouchBase$Command;->Layout:Lcom/perm/kate/imagezoom/ImageViewTouchBase$Command;

    new-instance v0, Lcom/perm/kate/imagezoom/ImageViewTouchBase$Command;

    const-string v1, "Reset"

    invoke-direct {v0, v1, v6}, Lcom/perm/kate/imagezoom/ImageViewTouchBase$Command;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/perm/kate/imagezoom/ImageViewTouchBase$Command;->Reset:Lcom/perm/kate/imagezoom/ImageViewTouchBase$Command;

    .line 22
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/perm/kate/imagezoom/ImageViewTouchBase$Command;

    sget-object v1, Lcom/perm/kate/imagezoom/ImageViewTouchBase$Command;->Center:Lcom/perm/kate/imagezoom/ImageViewTouchBase$Command;

    aput-object v1, v0, v2

    sget-object v1, Lcom/perm/kate/imagezoom/ImageViewTouchBase$Command;->Move:Lcom/perm/kate/imagezoom/ImageViewTouchBase$Command;

    aput-object v1, v0, v3

    sget-object v1, Lcom/perm/kate/imagezoom/ImageViewTouchBase$Command;->Zoom:Lcom/perm/kate/imagezoom/ImageViewTouchBase$Command;

    aput-object v1, v0, v4

    sget-object v1, Lcom/perm/kate/imagezoom/ImageViewTouchBase$Command;->Layout:Lcom/perm/kate/imagezoom/ImageViewTouchBase$Command;

    aput-object v1, v0, v5

    sget-object v1, Lcom/perm/kate/imagezoom/ImageViewTouchBase$Command;->Reset:Lcom/perm/kate/imagezoom/ImageViewTouchBase$Command;

    aput-object v1, v0, v6

    sput-object v0, Lcom/perm/kate/imagezoom/ImageViewTouchBase$Command;->$VALUES:[Lcom/perm/kate/imagezoom/ImageViewTouchBase$Command;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 22
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/perm/kate/imagezoom/ImageViewTouchBase$Command;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 22
    const-class v0, Lcom/perm/kate/imagezoom/ImageViewTouchBase$Command;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/perm/kate/imagezoom/ImageViewTouchBase$Command;

    return-object v0
.end method

.method public static values()[Lcom/perm/kate/imagezoom/ImageViewTouchBase$Command;
    .locals 1

    .prologue
    .line 22
    sget-object v0, Lcom/perm/kate/imagezoom/ImageViewTouchBase$Command;->$VALUES:[Lcom/perm/kate/imagezoom/ImageViewTouchBase$Command;

    invoke-virtual {v0}, [Lcom/perm/kate/imagezoom/ImageViewTouchBase$Command;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/perm/kate/imagezoom/ImageViewTouchBase$Command;

    return-object v0
.end method
