.class Lcom/my/target/ads/instream/InstreamAudioAd$1;
.super Ljava/lang/Object;
.source "InstreamAudioAd.java"

# interfaces
.implements Lcom/my/target/core/async/commands/b$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/my/target/ads/instream/InstreamAudioAd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/my/target/core/async/commands/b$a",
        "<",
        "Lcom/my/target/core/models/c;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/my/target/ads/instream/InstreamAudioAd;


# direct methods
.method constructor <init>(Lcom/my/target/ads/instream/InstreamAudioAd;)V
    .locals 0

    .prologue
    .line 39
    iput-object p1, p0, Lcom/my/target/ads/instream/InstreamAudioAd$1;->this$0:Lcom/my/target/ads/instream/InstreamAudioAd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onExecute(Lcom/my/target/core/async/commands/b;Lcom/my/target/core/models/c;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/my/target/core/async/commands/b",
            "<",
            "Lcom/my/target/core/models/c;",
            ">;",
            "Lcom/my/target/core/models/c;",
            ")V"
        }
    .end annotation

    .prologue
    .line 44
    if-nez p2, :cond_1

    .line 46
    iget-object v0, p0, Lcom/my/target/ads/instream/InstreamAudioAd$1;->this$0:Lcom/my/target/ads/instream/InstreamAudioAd;

    invoke-static {v0}, Lcom/my/target/ads/instream/InstreamAudioAd;->access$000(Lcom/my/target/ads/instream/InstreamAudioAd;)Lcom/my/target/ads/instream/InstreamAudioAd$InstreamAudioAdListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 47
    iget-object v0, p0, Lcom/my/target/ads/instream/InstreamAudioAd$1;->this$0:Lcom/my/target/ads/instream/InstreamAudioAd;

    invoke-static {v0}, Lcom/my/target/ads/instream/InstreamAudioAd;->access$000(Lcom/my/target/ads/instream/InstreamAudioAd;)Lcom/my/target/ads/instream/InstreamAudioAd$InstreamAudioAdListener;

    move-result-object v0

    iget-object v1, p0, Lcom/my/target/ads/instream/InstreamAudioAd$1;->this$0:Lcom/my/target/ads/instream/InstreamAudioAd;

    invoke-static {v1}, Lcom/my/target/ads/instream/InstreamAudioAd;->access$100(Lcom/my/target/ads/instream/InstreamAudioAd;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/my/target/ads/instream/InstreamAudioAd$1;->this$0:Lcom/my/target/ads/instream/InstreamAudioAd;

    invoke-interface {v0, v1, v2}, Lcom/my/target/ads/instream/InstreamAudioAd$InstreamAudioAdListener;->onComplete(Ljava/lang/String;Lcom/my/target/ads/instream/InstreamAudioAd;)V

    .line 75
    :cond_0
    :goto_0
    return-void

    .line 52
    :cond_1
    iget-object v0, p0, Lcom/my/target/ads/instream/InstreamAudioAd$1;->this$0:Lcom/my/target/ads/instream/InstreamAudioAd;

    invoke-static {v0}, Lcom/my/target/ads/instream/InstreamAudioAd;->access$200(Lcom/my/target/ads/instream/InstreamAudioAd;)Lcom/my/target/core/models/sections/g;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/my/target/ads/instream/InstreamAudioAd$1;->this$0:Lcom/my/target/ads/instream/InstreamAudioAd;

    invoke-static {v0}, Lcom/my/target/ads/instream/InstreamAudioAd;->access$300(Lcom/my/target/ads/instream/InstreamAudioAd;)Lcom/my/target/core/controllers/a;

    move-result-object v0

    if-nez v0, :cond_3

    .line 54
    :cond_2
    const-string v0, "Unable to start advertisement: not loaded yet"

    invoke-static {v0}, Lcom/my/target/core/b;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 57
    :cond_3
    iget-object v0, p0, Lcom/my/target/ads/instream/InstreamAudioAd$1;->this$0:Lcom/my/target/ads/instream/InstreamAudioAd;

    invoke-static {v0}, Lcom/my/target/ads/instream/InstreamAudioAd;->access$300(Lcom/my/target/ads/instream/InstreamAudioAd;)Lcom/my/target/core/controllers/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/my/target/core/controllers/a;->a()Lcom/my/target/ads/instream/InstreamAudioAdPlayer;

    move-result-object v0

    if-nez v0, :cond_4

    .line 59
    const-string v0, "Unable to start advertisement: player has not set"

    invoke-static {v0}, Lcom/my/target/core/b;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 63
    :cond_4
    const-string v0, "starting doAfter"

    invoke-static {v0}, Lcom/my/target/core/b;->a(Ljava/lang/String;)V

    .line 64
    iget-object v0, p0, Lcom/my/target/ads/instream/InstreamAudioAd$1;->this$0:Lcom/my/target/ads/instream/InstreamAudioAd;

    .line 65
    invoke-static {v0}, Lcom/my/target/ads/instream/InstreamAudioAd;->access$200(Lcom/my/target/ads/instream/InstreamAudioAd;)Lcom/my/target/core/models/sections/g;

    move-result-object v0

    iget-object v1, p0, Lcom/my/target/ads/instream/InstreamAudioAd$1;->this$0:Lcom/my/target/ads/instream/InstreamAudioAd;

    invoke-static {v1}, Lcom/my/target/ads/instream/InstreamAudioAd;->access$100(Lcom/my/target/ads/instream/InstreamAudioAd;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/my/target/core/models/sections/g;->c(Ljava/lang/String;)Lcom/my/target/core/models/sections/c;

    move-result-object v0

    .line 66
    invoke-virtual {v0}, Lcom/my/target/core/models/sections/c;->g()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 67
    iget-object v2, p0, Lcom/my/target/ads/instream/InstreamAudioAd$1;->this$0:Lcom/my/target/ads/instream/InstreamAudioAd;

    invoke-static {v2}, Lcom/my/target/ads/instream/InstreamAudioAd;->access$400(Lcom/my/target/ads/instream/InstreamAudioAd;)I

    move-result v2

    if-le v1, v2, :cond_5

    .line 69
    iget-object v2, p0, Lcom/my/target/ads/instream/InstreamAudioAd$1;->this$0:Lcom/my/target/ads/instream/InstreamAudioAd;

    invoke-static {v2}, Lcom/my/target/ads/instream/InstreamAudioAd;->access$300(Lcom/my/target/ads/instream/InstreamAudioAd;)Lcom/my/target/core/controllers/a;

    move-result-object v2

    .line 70
    invoke-virtual {v0}, Lcom/my/target/core/models/sections/c;->g()Ljava/util/ArrayList;

    move-result-object v3

    iget-object v4, p0, Lcom/my/target/ads/instream/InstreamAudioAd$1;->this$0:Lcom/my/target/ads/instream/InstreamAudioAd;

    invoke-static {v4}, Lcom/my/target/ads/instream/InstreamAudioAd;->access$400(Lcom/my/target/ads/instream/InstreamAudioAd;)I

    move-result v4

    invoke-virtual {v3, v4, v1}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v1

    .line 69
    invoke-virtual {v2, v0, v1}, Lcom/my/target/core/controllers/a;->b(Lcom/my/target/core/models/sections/c;Ljava/util/List;)V

    goto :goto_0

    .line 73
    :cond_5
    iget-object v1, p0, Lcom/my/target/ads/instream/InstreamAudioAd$1;->this$0:Lcom/my/target/ads/instream/InstreamAudioAd;

    invoke-virtual {v0}, Lcom/my/target/core/models/sections/c;->l()Lcom/my/target/core/models/d;

    move-result-object v0

    iget-object v2, p0, Lcom/my/target/ads/instream/InstreamAudioAd$1;->this$0:Lcom/my/target/ads/instream/InstreamAudioAd;

    invoke-static {v2}, Lcom/my/target/ads/instream/InstreamAudioAd;->access$100(Lcom/my/target/ads/instream/InstreamAudioAd;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lcom/my/target/ads/instream/InstreamAudioAd;->access$500(Lcom/my/target/ads/instream/InstreamAudioAd;Lcom/my/target/core/models/d;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public bridge synthetic onExecute(Lcom/my/target/core/async/commands/b;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 39
    check-cast p2, Lcom/my/target/core/models/c;

    invoke-virtual {p0, p1, p2}, Lcom/my/target/ads/instream/InstreamAudioAd$1;->onExecute(Lcom/my/target/core/async/commands/b;Lcom/my/target/core/models/c;)V

    return-void
.end method
