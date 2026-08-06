.class Lcom/my/target/ads/instream/InstreamAd$3;
.super Ljava/lang/Object;
.source "InstreamAd.java"

# interfaces
.implements Lcom/my/target/core/controllers/b$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/my/target/ads/instream/InstreamAd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/my/target/ads/instream/InstreamAd;


# direct methods
.method constructor <init>(Lcom/my/target/ads/instream/InstreamAd;)V
    .locals 0

    .prologue
    .line 96
    iput-object p1, p0, Lcom/my/target/ads/instream/InstreamAd$3;->this$0:Lcom/my/target/ads/instream/InstreamAd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public sectionCompleted(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 100
    iget-object v0, p0, Lcom/my/target/ads/instream/InstreamAd$3;->this$0:Lcom/my/target/ads/instream/InstreamAd;

    invoke-static {v0}, Lcom/my/target/ads/instream/InstreamAd;->access$200(Lcom/my/target/ads/instream/InstreamAd;)Lcom/my/target/core/models/sections/f;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/my/target/ads/instream/InstreamAd$3;->this$0:Lcom/my/target/ads/instream/InstreamAd;

    invoke-static {v0}, Lcom/my/target/ads/instream/InstreamAd;->access$600(Lcom/my/target/ads/instream/InstreamAd;)Landroid/util/Pair;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 102
    iget-object v0, p0, Lcom/my/target/ads/instream/InstreamAd$3;->this$0:Lcom/my/target/ads/instream/InstreamAd;

    .line 103
    invoke-static {v0}, Lcom/my/target/ads/instream/InstreamAd;->access$200(Lcom/my/target/ads/instream/InstreamAd;)Lcom/my/target/core/models/sections/f;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/my/target/core/models/sections/f;->c(Ljava/lang/String;)Lcom/my/target/core/models/sections/k;

    move-result-object v1

    .line 104
    invoke-virtual {v1}, Lcom/my/target/core/models/sections/k;->j()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 105
    iget-object v2, p0, Lcom/my/target/ads/instream/InstreamAd$3;->this$0:Lcom/my/target/ads/instream/InstreamAd;

    iget-object v0, p0, Lcom/my/target/ads/instream/InstreamAd$3;->this$0:Lcom/my/target/ads/instream/InstreamAd;

    invoke-static {v0}, Lcom/my/target/ads/instream/InstreamAd;->access$600(Lcom/my/target/ads/instream/InstreamAd;)Landroid/util/Pair;

    move-result-object v0

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-static {v2, v1, v0}, Lcom/my/target/ads/instream/InstreamAd;->access$800(Lcom/my/target/ads/instream/InstreamAd;Lcom/my/target/core/models/sections/k;F)V

    .line 115
    :cond_0
    :goto_0
    return-void

    .line 107
    :cond_1
    iget-object v0, p0, Lcom/my/target/ads/instream/InstreamAd$3;->this$0:Lcom/my/target/ads/instream/InstreamAd;

    invoke-virtual {v1}, Lcom/my/target/core/models/sections/k;->l()Lcom/my/target/core/models/d;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lcom/my/target/ads/instream/InstreamAd;->access$500(Lcom/my/target/ads/instream/InstreamAd;Lcom/my/target/core/models/d;Ljava/lang/String;)V

    goto :goto_0

    .line 111
    :cond_2
    iget-object v0, p0, Lcom/my/target/ads/instream/InstreamAd$3;->this$0:Lcom/my/target/ads/instream/InstreamAd;

    invoke-static {v0}, Lcom/my/target/ads/instream/InstreamAd;->access$000(Lcom/my/target/ads/instream/InstreamAd;)Lcom/my/target/ads/instream/InstreamAd$InstreamAdListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 112
    iget-object v0, p0, Lcom/my/target/ads/instream/InstreamAd$3;->this$0:Lcom/my/target/ads/instream/InstreamAd;

    invoke-static {v0}, Lcom/my/target/ads/instream/InstreamAd;->access$000(Lcom/my/target/ads/instream/InstreamAd;)Lcom/my/target/ads/instream/InstreamAd$InstreamAdListener;

    move-result-object v0

    iget-object v1, p0, Lcom/my/target/ads/instream/InstreamAd$3;->this$0:Lcom/my/target/ads/instream/InstreamAd;

    invoke-interface {v0, p1, v1}, Lcom/my/target/ads/instream/InstreamAd$InstreamAdListener;->onComplete(Ljava/lang/String;Lcom/my/target/ads/instream/InstreamAd;)V

    goto :goto_0
.end method
