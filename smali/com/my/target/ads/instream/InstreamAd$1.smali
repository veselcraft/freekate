.class Lcom/my/target/ads/instream/InstreamAd$1;
.super Ljava/lang/Object;
.source "InstreamAd.java"

# interfaces
.implements Lcom/my/target/core/async/commands/b$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/my/target/ads/instream/InstreamAd;
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
.field final synthetic this$0:Lcom/my/target/ads/instream/InstreamAd;


# direct methods
.method constructor <init>(Lcom/my/target/ads/instream/InstreamAd;)V
    .locals 0

    .prologue
    .line 40
    iput-object p1, p0, Lcom/my/target/ads/instream/InstreamAd$1;->this$0:Lcom/my/target/ads/instream/InstreamAd;

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
    .line 45
    if-nez p2, :cond_1

    .line 47
    iget-object v0, p0, Lcom/my/target/ads/instream/InstreamAd$1;->this$0:Lcom/my/target/ads/instream/InstreamAd;

    invoke-static {v0}, Lcom/my/target/ads/instream/InstreamAd;->access$000(Lcom/my/target/ads/instream/InstreamAd;)Lcom/my/target/ads/instream/InstreamAd$InstreamAdListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 48
    iget-object v0, p0, Lcom/my/target/ads/instream/InstreamAd$1;->this$0:Lcom/my/target/ads/instream/InstreamAd;

    invoke-static {v0}, Lcom/my/target/ads/instream/InstreamAd;->access$000(Lcom/my/target/ads/instream/InstreamAd;)Lcom/my/target/ads/instream/InstreamAd$InstreamAdListener;

    move-result-object v0

    iget-object v1, p0, Lcom/my/target/ads/instream/InstreamAd$1;->this$0:Lcom/my/target/ads/instream/InstreamAd;

    invoke-static {v1}, Lcom/my/target/ads/instream/InstreamAd;->access$100(Lcom/my/target/ads/instream/InstreamAd;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/my/target/ads/instream/InstreamAd$1;->this$0:Lcom/my/target/ads/instream/InstreamAd;

    invoke-interface {v0, v1, v2}, Lcom/my/target/ads/instream/InstreamAd$InstreamAdListener;->onComplete(Ljava/lang/String;Lcom/my/target/ads/instream/InstreamAd;)V

    .line 75
    :cond_0
    :goto_0
    return-void

    .line 52
    :cond_1
    iget-object v0, p0, Lcom/my/target/ads/instream/InstreamAd$1;->this$0:Lcom/my/target/ads/instream/InstreamAd;

    invoke-static {v0}, Lcom/my/target/ads/instream/InstreamAd;->access$200(Lcom/my/target/ads/instream/InstreamAd;)Lcom/my/target/core/models/sections/f;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/my/target/ads/instream/InstreamAd$1;->this$0:Lcom/my/target/ads/instream/InstreamAd;

    invoke-static {v0}, Lcom/my/target/ads/instream/InstreamAd;->access$300(Lcom/my/target/ads/instream/InstreamAd;)Lcom/my/target/core/controllers/b;

    move-result-object v0

    if-nez v0, :cond_3

    .line 54
    :cond_2
    const-string v0, "Unable to start advertisement: not loaded yet"

    invoke-static {v0}, Lcom/my/target/core/b;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 57
    :cond_3
    iget-object v0, p0, Lcom/my/target/ads/instream/InstreamAd$1;->this$0:Lcom/my/target/ads/instream/InstreamAd;

    invoke-static {v0}, Lcom/my/target/ads/instream/InstreamAd;->access$300(Lcom/my/target/ads/instream/InstreamAd;)Lcom/my/target/core/controllers/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/my/target/core/controllers/b;->a()Lcom/my/target/ads/instream/InstreamAdPlayer;

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
    iget-object v0, p0, Lcom/my/target/ads/instream/InstreamAd$1;->this$0:Lcom/my/target/ads/instream/InstreamAd;

    .line 65
    invoke-static {v0}, Lcom/my/target/ads/instream/InstreamAd;->access$200(Lcom/my/target/ads/instream/InstreamAd;)Lcom/my/target/core/models/sections/f;

    move-result-object v0

    iget-object v1, p0, Lcom/my/target/ads/instream/InstreamAd$1;->this$0:Lcom/my/target/ads/instream/InstreamAd;

    invoke-static {v1}, Lcom/my/target/ads/instream/InstreamAd;->access$100(Lcom/my/target/ads/instream/InstreamAd;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/my/target/core/models/sections/f;->c(Ljava/lang/String;)Lcom/my/target/core/models/sections/k;

    move-result-object v0

    .line 66
    invoke-virtual {v0}, Lcom/my/target/core/models/sections/k;->g()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 67
    iget-object v2, p0, Lcom/my/target/ads/instream/InstreamAd$1;->this$0:Lcom/my/target/ads/instream/InstreamAd;

    invoke-static {v2}, Lcom/my/target/ads/instream/InstreamAd;->access$400(Lcom/my/target/ads/instream/InstreamAd;)I

    move-result v2

    if-le v1, v2, :cond_5

    .line 69
    iget-object v2, p0, Lcom/my/target/ads/instream/InstreamAd$1;->this$0:Lcom/my/target/ads/instream/InstreamAd;

    invoke-static {v2}, Lcom/my/target/ads/instream/InstreamAd;->access$300(Lcom/my/target/ads/instream/InstreamAd;)Lcom/my/target/core/controllers/b;

    move-result-object v2

    .line 70
    invoke-virtual {v0}, Lcom/my/target/core/models/sections/k;->g()Ljava/util/ArrayList;

    move-result-object v3

    iget-object v4, p0, Lcom/my/target/ads/instream/InstreamAd$1;->this$0:Lcom/my/target/ads/instream/InstreamAd;

    invoke-static {v4}, Lcom/my/target/ads/instream/InstreamAd;->access$400(Lcom/my/target/ads/instream/InstreamAd;)I

    move-result v4

    invoke-virtual {v3, v4, v1}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v1

    .line 69
    invoke-virtual {v2, v0, v1}, Lcom/my/target/core/controllers/b;->b(Lcom/my/target/core/models/sections/k;Ljava/util/List;)V

    goto :goto_0

    .line 73
    :cond_5
    iget-object v1, p0, Lcom/my/target/ads/instream/InstreamAd$1;->this$0:Lcom/my/target/ads/instream/InstreamAd;

    invoke-virtual {v0}, Lcom/my/target/core/models/sections/k;->l()Lcom/my/target/core/models/d;

    move-result-object v0

    iget-object v2, p0, Lcom/my/target/ads/instream/InstreamAd$1;->this$0:Lcom/my/target/ads/instream/InstreamAd;

    invoke-static {v2}, Lcom/my/target/ads/instream/InstreamAd;->access$100(Lcom/my/target/ads/instream/InstreamAd;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lcom/my/target/ads/instream/InstreamAd;->access$500(Lcom/my/target/ads/instream/InstreamAd;Lcom/my/target/core/models/d;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public bridge synthetic onExecute(Lcom/my/target/core/async/commands/b;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 40
    check-cast p2, Lcom/my/target/core/models/c;

    invoke-virtual {p0, p1, p2}, Lcom/my/target/ads/instream/InstreamAd$1;->onExecute(Lcom/my/target/core/async/commands/b;Lcom/my/target/core/models/c;)V

    return-void
.end method
