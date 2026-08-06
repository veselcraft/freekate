.class Lcom/my/target/ads/instream/InstreamAudioAd$3;
.super Ljava/lang/Object;
.source "InstreamAudioAd.java"

# interfaces
.implements Lcom/my/target/core/controllers/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/my/target/ads/instream/InstreamAudioAd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/my/target/ads/instream/InstreamAudioAd;


# direct methods
.method constructor <init>(Lcom/my/target/ads/instream/InstreamAudioAd;)V
    .locals 0

    .prologue
    .line 97
    iput-object p1, p0, Lcom/my/target/ads/instream/InstreamAudioAd$3;->this$0:Lcom/my/target/ads/instream/InstreamAudioAd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public sectionCompleted(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 101
    iget-object v0, p0, Lcom/my/target/ads/instream/InstreamAudioAd$3;->this$0:Lcom/my/target/ads/instream/InstreamAudioAd;

    invoke-static {v0}, Lcom/my/target/ads/instream/InstreamAudioAd;->access$200(Lcom/my/target/ads/instream/InstreamAudioAd;)Lcom/my/target/core/models/sections/g;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/my/target/ads/instream/InstreamAudioAd$3;->this$0:Lcom/my/target/ads/instream/InstreamAudioAd;

    invoke-static {v0}, Lcom/my/target/ads/instream/InstreamAudioAd;->access$600(Lcom/my/target/ads/instream/InstreamAudioAd;)Landroid/util/Pair;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 103
    iget-object v0, p0, Lcom/my/target/ads/instream/InstreamAudioAd$3;->this$0:Lcom/my/target/ads/instream/InstreamAudioAd;

    .line 104
    invoke-static {v0}, Lcom/my/target/ads/instream/InstreamAudioAd;->access$200(Lcom/my/target/ads/instream/InstreamAudioAd;)Lcom/my/target/core/models/sections/g;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/my/target/core/models/sections/g;->c(Ljava/lang/String;)Lcom/my/target/core/models/sections/c;

    move-result-object v1

    .line 105
    invoke-virtual {v1}, Lcom/my/target/core/models/sections/c;->j()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 106
    iget-object v2, p0, Lcom/my/target/ads/instream/InstreamAudioAd$3;->this$0:Lcom/my/target/ads/instream/InstreamAudioAd;

    iget-object v0, p0, Lcom/my/target/ads/instream/InstreamAudioAd$3;->this$0:Lcom/my/target/ads/instream/InstreamAudioAd;

    invoke-static {v0}, Lcom/my/target/ads/instream/InstreamAudioAd;->access$600(Lcom/my/target/ads/instream/InstreamAudioAd;)Landroid/util/Pair;

    move-result-object v0

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-static {v2, v1, v0}, Lcom/my/target/ads/instream/InstreamAudioAd;->access$800(Lcom/my/target/ads/instream/InstreamAudioAd;Lcom/my/target/core/models/sections/c;F)V

    .line 116
    :cond_0
    :goto_0
    return-void

    .line 108
    :cond_1
    iget-object v0, p0, Lcom/my/target/ads/instream/InstreamAudioAd$3;->this$0:Lcom/my/target/ads/instream/InstreamAudioAd;

    invoke-virtual {v1}, Lcom/my/target/core/models/sections/c;->l()Lcom/my/target/core/models/d;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lcom/my/target/ads/instream/InstreamAudioAd;->access$500(Lcom/my/target/ads/instream/InstreamAudioAd;Lcom/my/target/core/models/d;Ljava/lang/String;)V

    goto :goto_0

    .line 112
    :cond_2
    iget-object v0, p0, Lcom/my/target/ads/instream/InstreamAudioAd$3;->this$0:Lcom/my/target/ads/instream/InstreamAudioAd;

    invoke-static {v0}, Lcom/my/target/ads/instream/InstreamAudioAd;->access$000(Lcom/my/target/ads/instream/InstreamAudioAd;)Lcom/my/target/ads/instream/InstreamAudioAd$InstreamAudioAdListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 113
    iget-object v0, p0, Lcom/my/target/ads/instream/InstreamAudioAd$3;->this$0:Lcom/my/target/ads/instream/InstreamAudioAd;

    invoke-static {v0}, Lcom/my/target/ads/instream/InstreamAudioAd;->access$000(Lcom/my/target/ads/instream/InstreamAudioAd;)Lcom/my/target/ads/instream/InstreamAudioAd$InstreamAudioAdListener;

    move-result-object v0

    iget-object v1, p0, Lcom/my/target/ads/instream/InstreamAudioAd$3;->this$0:Lcom/my/target/ads/instream/InstreamAudioAd;

    invoke-interface {v0, p1, v1}, Lcom/my/target/ads/instream/InstreamAudioAd$InstreamAudioAdListener;->onComplete(Ljava/lang/String;Lcom/my/target/ads/instream/InstreamAudioAd;)V

    goto :goto_0
.end method
