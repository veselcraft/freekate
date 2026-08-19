.class public abstract Lcom/my/target/cd;
.super Ljava/lang/Object;
.source "MediaData.java"


# instance fields
.field protected height:I

.field private t:Ljava/lang/Object;

.field protected final url:Ljava/lang/String;

.field protected width:I


# direct methods
.method protected constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-object p1, p0, Lcom/my/target/cd;->url:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getData()Ljava/lang/Object;
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/my/target/cd;->t:Ljava/lang/Object;

    return-object v0
.end method

.method public getHeight()I
    .locals 1

    .line 32
    iget v0, p0, Lcom/my/target/cd;->height:I

    return v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .line 22
    iget-object v0, p0, Lcom/my/target/cd;->url:Ljava/lang/String;

    return-object v0
.end method

.method public getWidth()I
    .locals 1

    .line 27
    iget v0, p0, Lcom/my/target/cd;->width:I

    return v0
.end method
