.class abstract Landroidx/appcompat/view/menu/BaseWrapper;
.super Ljava/lang/Object;
.source "BaseWrapper.java"


# instance fields
.field final mWrappedObject:Ljava/lang/Object;


# direct methods
.method constructor <init>(Ljava/lang/Object;)V
    .locals 1

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    .line 27
    iput-object p1, p0, Landroidx/appcompat/view/menu/BaseWrapper;->mWrappedObject:Ljava/lang/Object;

    return-void

    .line 25
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Wrapped Object can not be null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
