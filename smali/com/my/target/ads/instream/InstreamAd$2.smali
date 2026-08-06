.class Lcom/my/target/ads/instream/InstreamAd$2;
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
    .line 80
    iput-object p1, p0, Lcom/my/target/ads/instream/InstreamAd$2;->this$0:Lcom/my/target/ads/instream/InstreamAd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onExecute(Lcom/my/target/core/async/commands/b;Lcom/my/target/core/models/c;)V
    .locals 3
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
    .line 85
    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/my/target/ads/instream/InstreamAd$2;->this$0:Lcom/my/target/ads/instream/InstreamAd;

    invoke-static {v0}, Lcom/my/target/ads/instream/InstreamAd;->access$600(Lcom/my/target/ads/instream/InstreamAd;)Landroid/util/Pair;

    move-result-object v0

    if-nez v0, :cond_2

    .line 87
    :cond_0
    iget-object v0, p0, Lcom/my/target/ads/instream/InstreamAd$2;->this$0:Lcom/my/target/ads/instream/InstreamAd;

    invoke-static {v0}, Lcom/my/target/ads/instream/InstreamAd;->access$000(Lcom/my/target/ads/instream/InstreamAd;)Lcom/my/target/ads/instream/InstreamAd$InstreamAdListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 88
    iget-object v0, p0, Lcom/my/target/ads/instream/InstreamAd$2;->this$0:Lcom/my/target/ads/instream/InstreamAd;

    invoke-static {v0}, Lcom/my/target/ads/instream/InstreamAd;->access$000(Lcom/my/target/ads/instream/InstreamAd;)Lcom/my/target/ads/instream/InstreamAd$InstreamAdListener;

    move-result-object v0

    iget-object v1, p0, Lcom/my/target/ads/instream/InstreamAd$2;->this$0:Lcom/my/target/ads/instream/InstreamAd;

    invoke-static {v1}, Lcom/my/target/ads/instream/InstreamAd;->access$100(Lcom/my/target/ads/instream/InstreamAd;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/my/target/ads/instream/InstreamAd$2;->this$0:Lcom/my/target/ads/instream/InstreamAd;

    invoke-interface {v0, v1, v2}, Lcom/my/target/ads/instream/InstreamAd$InstreamAdListener;->onComplete(Ljava/lang/String;Lcom/my/target/ads/instream/InstreamAd;)V

    .line 92
    :cond_1
    :goto_0
    return-void

    .line 91
    :cond_2
    iget-object v1, p0, Lcom/my/target/ads/instream/InstreamAd$2;->this$0:Lcom/my/target/ads/instream/InstreamAd;

    iget-object v0, p0, Lcom/my/target/ads/instream/InstreamAd$2;->this$0:Lcom/my/target/ads/instream/InstreamAd;

    invoke-static {v0}, Lcom/my/target/ads/instream/InstreamAd;->access$100(Lcom/my/target/ads/instream/InstreamAd;)Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/my/target/ads/instream/InstreamAd$2;->this$0:Lcom/my/target/ads/instream/InstreamAd;

    invoke-static {v0}, Lcom/my/target/ads/instream/InstreamAd;->access$600(Lcom/my/target/ads/instream/InstreamAd;)Landroid/util/Pair;

    move-result-object v0

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-static {v1, v2, v0}, Lcom/my/target/ads/instream/InstreamAd;->access$700(Lcom/my/target/ads/instream/InstreamAd;Ljava/lang/String;F)V

    goto :goto_0
.end method

.method public bridge synthetic onExecute(Lcom/my/target/core/async/commands/b;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 80
    check-cast p2, Lcom/my/target/core/models/c;

    invoke-virtual {p0, p1, p2}, Lcom/my/target/ads/instream/InstreamAd$2;->onExecute(Lcom/my/target/core/async/commands/b;Lcom/my/target/core/models/c;)V

    return-void
.end method
