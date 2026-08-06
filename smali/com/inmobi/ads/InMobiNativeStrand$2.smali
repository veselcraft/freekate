.class Lcom/inmobi/ads/InMobiNativeStrand$2;
.super Ljava/lang/Object;
.source "InMobiNativeStrand.java"

# interfaces
.implements Lcom/inmobi/ads/AdUnit$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/inmobi/ads/InMobiNativeStrand;-><init>(Landroid/content/Context;JLcom/inmobi/ads/InMobiNativeStrand$NativeStrandAdListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/inmobi/ads/InMobiNativeStrand;


# direct methods
.method constructor <init>(Lcom/inmobi/ads/InMobiNativeStrand;)V
    .locals 0

    .prologue
    .line 120
    iput-object p1, p0, Lcom/inmobi/ads/InMobiNativeStrand$2;->a:Lcom/inmobi/ads/InMobiNativeStrand;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .prologue
    .line 124
    iget-object v0, p0, Lcom/inmobi/ads/InMobiNativeStrand$2;->a:Lcom/inmobi/ads/InMobiNativeStrand;

    invoke-static {v0}, Lcom/inmobi/ads/InMobiNativeStrand;->access$100(Lcom/inmobi/ads/InMobiNativeStrand;)Lcom/inmobi/ads/s;

    move-result-object v0

    if-nez v0, :cond_1

    .line 125
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    invoke-static {}, Lcom/inmobi/ads/InMobiNativeStrand;->access$200()Ljava/lang/String;

    move-result-object v1

    const-string v2, "NativeStrandUnit already destroyed, ignoring ad load success"

    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    :cond_0
    :goto_0
    return-void

    .line 127
    :cond_1
    iget-object v0, p0, Lcom/inmobi/ads/InMobiNativeStrand$2;->a:Lcom/inmobi/ads/InMobiNativeStrand;

    iget-object v1, p0, Lcom/inmobi/ads/InMobiNativeStrand$2;->a:Lcom/inmobi/ads/InMobiNativeStrand;

    invoke-static {v1}, Lcom/inmobi/ads/InMobiNativeStrand;->access$100(Lcom/inmobi/ads/InMobiNativeStrand;)Lcom/inmobi/ads/s;

    move-result-object v1

    invoke-virtual {v1}, Lcom/inmobi/ads/s;->x()Lcom/inmobi/ads/q;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/inmobi/ads/InMobiNativeStrand;->access$302(Lcom/inmobi/ads/InMobiNativeStrand;Lcom/inmobi/ads/q;)Lcom/inmobi/ads/q;

    .line 128
    iget-object v0, p0, Lcom/inmobi/ads/InMobiNativeStrand$2;->a:Lcom/inmobi/ads/InMobiNativeStrand;

    invoke-static {v0}, Lcom/inmobi/ads/InMobiNativeStrand;->access$300(Lcom/inmobi/ads/InMobiNativeStrand;)Lcom/inmobi/ads/q;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 129
    iget-object v0, p0, Lcom/inmobi/ads/InMobiNativeStrand$2;->a:Lcom/inmobi/ads/InMobiNativeStrand;

    invoke-static {v0}, Lcom/inmobi/ads/InMobiNativeStrand;->access$300(Lcom/inmobi/ads/InMobiNativeStrand;)Lcom/inmobi/ads/q;

    move-result-object v0

    iget-object v1, p0, Lcom/inmobi/ads/InMobiNativeStrand$2;->a:Lcom/inmobi/ads/InMobiNativeStrand;

    invoke-static {v1}, Lcom/inmobi/ads/InMobiNativeStrand;->access$400(Lcom/inmobi/ads/InMobiNativeStrand;)Lcom/inmobi/ads/q$a;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/inmobi/ads/q;->a(Lcom/inmobi/ads/q$a;)V

    .line 130
    iget-object v0, p0, Lcom/inmobi/ads/InMobiNativeStrand$2;->a:Lcom/inmobi/ads/InMobiNativeStrand;

    invoke-static {v0}, Lcom/inmobi/ads/InMobiNativeStrand;->access$000(Lcom/inmobi/ads/InMobiNativeStrand;)Lcom/inmobi/ads/InMobiNativeStrand$a;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/inmobi/ads/InMobiNativeStrand$a;->sendEmptyMessage(I)Z

    .line 131
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    invoke-static {}, Lcom/inmobi/ads/InMobiNativeStrand;->access$200()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Ad load successful notifying app"

    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public a(Lcom/inmobi/ads/InMobiAdRequestStatus;)V
    .locals 2

    .prologue
    .line 138
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 139
    const/4 v1, 0x2

    iput v1, v0, Landroid/os/Message;->what:I

    .line 140
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 141
    iget-object v1, p0, Lcom/inmobi/ads/InMobiNativeStrand$2;->a:Lcom/inmobi/ads/InMobiNativeStrand;

    invoke-static {v1}, Lcom/inmobi/ads/InMobiNativeStrand;->access$000(Lcom/inmobi/ads/InMobiNativeStrand;)Lcom/inmobi/ads/InMobiNativeStrand$a;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/inmobi/ads/InMobiNativeStrand$a;->sendMessage(Landroid/os/Message;)Z

    .line 142
    return-void
.end method

.method public a(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 157
    return-void
.end method

.method public b()V
    .locals 0

    .prologue
    .line 147
    return-void
.end method

.method public b(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 167
    return-void
.end method

.method public c()V
    .locals 0

    .prologue
    .line 152
    return-void
.end method

.method public d()V
    .locals 0

    .prologue
    .line 162
    return-void
.end method
