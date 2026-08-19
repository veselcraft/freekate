.class Lcom/my/target/instreamads/InstreamAudioAd$1;
.super Ljava/lang/Object;
.source "InstreamAudioAd.java"

# interfaces
.implements Lcom/my/target/b$b;


# instance fields
.field final synthetic this$0:Lcom/my/target/instreamads/InstreamAudioAd;


# direct methods
.method constructor <init>(Lcom/my/target/instreamads/InstreamAudioAd;)V
    .locals 0

    .line 148
    iput-object p1, p0, Lcom/my/target/instreamads/InstreamAudioAd$1;->this$0:Lcom/my/target/instreamads/InstreamAudioAd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onResult(Lcom/my/target/cv;Ljava/lang/String;)V
    .locals 0

    .line 148
    check-cast p1, Lcom/my/target/cx;

    invoke-virtual {p0, p1, p2}, Lcom/my/target/instreamads/InstreamAudioAd$1;->onResult(Lcom/my/target/cx;Ljava/lang/String;)V

    return-void
.end method

.method public onResult(Lcom/my/target/cx;Ljava/lang/String;)V
    .locals 1

    .line 152
    iget-object v0, p0, Lcom/my/target/instreamads/InstreamAudioAd$1;->this$0:Lcom/my/target/instreamads/InstreamAudioAd;

    invoke-static {v0, p1, p2}, Lcom/my/target/instreamads/InstreamAudioAd;->access$000(Lcom/my/target/instreamads/InstreamAudioAd;Lcom/my/target/cx;Ljava/lang/String;)V

    return-void
.end method
