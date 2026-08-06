.class public abstract Lcom/my/target/core/models/a;
.super Ljava/lang/Object;
.source "AbstractMediaData.java"

# interfaces
.implements Lcom/my/target/core/models/h;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/my/target/core/models/h",
        "<TT;>;"
    }
.end annotation


# instance fields
.field protected height:I

.field private t:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field protected final url:Ljava/lang/String;

.field protected width:I


# direct methods
.method protected constructor <init>(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Lcom/my/target/core/models/a;->url:Ljava/lang/String;

    .line 48
    return-void
.end method


# virtual methods
.method public getData()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 42
    iget-object v0, p0, Lcom/my/target/core/models/a;->t:Ljava/lang/Object;

    return-object v0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 22
    iget v0, p0, Lcom/my/target/core/models/a;->height:I

    return v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 12
    iget-object v0, p0, Lcom/my/target/core/models/a;->url:Ljava/lang/String;

    return-object v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 17
    iget v0, p0, Lcom/my/target/core/models/a;->width:I

    return v0
.end method

.method public setData(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 37
    iput-object p1, p0, Lcom/my/target/core/models/a;->t:Ljava/lang/Object;

    .line 38
    return-void
.end method

.method public setHeight(I)V
    .locals 0

    .prologue
    .line 32
    iput p1, p0, Lcom/my/target/core/models/a;->height:I

    .line 33
    return-void
.end method

.method public setWidth(I)V
    .locals 0

    .prologue
    .line 27
    iput p1, p0, Lcom/my/target/core/models/a;->width:I

    .line 28
    return-void
.end method
