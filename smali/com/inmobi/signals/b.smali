.class public Lcom/inmobi/signals/b;
.super Lcom/inmobi/commons/core/network/NetworkRequest;
.source "CarbGetListNetworkRequest.java"


# instance fields
.field private d:I

.field private e:I


# direct methods
.method public constructor <init>(Ljava/lang/String;IILcom/inmobi/commons/core/utilities/uid/d;)V
    .locals 2

    .prologue
    .line 15
    sget-object v0, Lcom/inmobi/commons/core/network/NetworkRequest$RequestType;->POST:Lcom/inmobi/commons/core/network/NetworkRequest$RequestType;

    const/4 v1, 0x1

    invoke-direct {p0, v0, p1, v1, p4}, Lcom/inmobi/commons/core/network/NetworkRequest;-><init>(Lcom/inmobi/commons/core/network/NetworkRequest$RequestType;Ljava/lang/String;ZLcom/inmobi/commons/core/utilities/uid/d;)V

    .line 17
    iput p2, p0, Lcom/inmobi/signals/b;->d:I

    .line 18
    iput p3, p0, Lcom/inmobi/signals/b;->e:I

    .line 19
    return-void
.end method
