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
        "Ljava/lang/Enum<",
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
    .locals 11

    .line 23
    new-instance v0, Lcom/perm/kate/imagezoom/ImageViewTouchBase$Command;

    const-string v1, "Center"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/perm/kate/imagezoom/ImageViewTouchBase$Command;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/perm/kate/imagezoom/ImageViewTouchBase$Command;->Center:Lcom/perm/kate/imagezoom/ImageViewTouchBase$Command;

    new-instance v1, Lcom/perm/kate/imagezoom/ImageViewTouchBase$Command;

    const-string v3, "Move"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/perm/kate/imagezoom/ImageViewTouchBase$Command;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/perm/kate/imagezoom/ImageViewTouchBase$Command;->Move:Lcom/perm/kate/imagezoom/ImageViewTouchBase$Command;

    new-instance v3, Lcom/perm/kate/imagezoom/ImageViewTouchBase$Command;

    const-string v5, "Zoom"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/perm/kate/imagezoom/ImageViewTouchBase$Command;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/perm/kate/imagezoom/ImageViewTouchBase$Command;->Zoom:Lcom/perm/kate/imagezoom/ImageViewTouchBase$Command;

    new-instance v5, Lcom/perm/kate/imagezoom/ImageViewTouchBase$Command;

    const-string v7, "Layout"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/perm/kate/imagezoom/ImageViewTouchBase$Command;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/perm/kate/imagezoom/ImageViewTouchBase$Command;->Layout:Lcom/perm/kate/imagezoom/ImageViewTouchBase$Command;

    new-instance v7, Lcom/perm/kate/imagezoom/ImageViewTouchBase$Command;

    const-string v9, "Reset"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/perm/kate/imagezoom/ImageViewTouchBase$Command;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/perm/kate/imagezoom/ImageViewTouchBase$Command;->Reset:Lcom/perm/kate/imagezoom/ImageViewTouchBase$Command;

    const/4 v9, 0x5

    new-array v9, v9, [Lcom/perm/kate/imagezoom/ImageViewTouchBase$Command;

    aput-object v0, v9, v2

    aput-object v1, v9, v4

    aput-object v3, v9, v6

    aput-object v5, v9, v8

    aput-object v7, v9, v10

    .line 22
    sput-object v9, Lcom/perm/kate/imagezoom/ImageViewTouchBase$Command;->$VALUES:[Lcom/perm/kate/imagezoom/ImageViewTouchBase$Command;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 22
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/perm/kate/imagezoom/ImageViewTouchBase$Command;
    .locals 1

    .line 22
    const-class v0, Lcom/perm/kate/imagezoom/ImageViewTouchBase$Command;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/perm/kate/imagezoom/ImageViewTouchBase$Command;

    return-object p0
.end method

.method public static values()[Lcom/perm/kate/imagezoom/ImageViewTouchBase$Command;
    .locals 1

    .line 22
    sget-object v0, Lcom/perm/kate/imagezoom/ImageViewTouchBase$Command;->$VALUES:[Lcom/perm/kate/imagezoom/ImageViewTouchBase$Command;

    invoke-virtual {v0}, [Lcom/perm/kate/imagezoom/ImageViewTouchBase$Command;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/perm/kate/imagezoom/ImageViewTouchBase$Command;

    return-object v0
.end method
