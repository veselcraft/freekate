.class Lcom/inmobi/commons/core/utilities/uid/a;
.super Ljava/lang/Object;
.source "AdvertisingIdInfo.java"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Z


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 21
    iput-object p1, p0, Lcom/inmobi/commons/core/utilities/uid/a;->a:Ljava/lang/String;

    .line 22
    return-void
.end method

.method a(Z)V
    .locals 0

    .prologue
    .line 13
    iput-boolean p1, p0, Lcom/inmobi/commons/core/utilities/uid/a;->b:Z

    .line 14
    return-void
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 9
    iget-boolean v0, p0, Lcom/inmobi/commons/core/utilities/uid/a;->b:Z

    return v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lcom/inmobi/commons/core/utilities/uid/a;->a:Ljava/lang/String;

    return-object v0
.end method
