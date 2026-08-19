.class Lcom/my/target/i$1;
.super Ljava/lang/Object;
.source "InstreamAudioAdFactory.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic m:Lcom/my/target/i;


# direct methods
.method constructor <init>(Lcom/my/target/i;)V
    .locals 0

    .line 67
    iput-object p1, p0, Lcom/my/target/i$1;->m:Lcom/my/target/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 71
    iget-object v0, p0, Lcom/my/target/i$1;->m:Lcom/my/target/i;

    invoke-static {v0}, Lcom/my/target/i;->b(Lcom/my/target/i;)Lcom/my/target/is;

    move-result-object v0

    iget-object v1, p0, Lcom/my/target/i$1;->m:Lcom/my/target/i;

    invoke-static {v1}, Lcom/my/target/i;->a(Lcom/my/target/i;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/my/target/is;->e(Ljava/lang/Runnable;)V

    .line 72
    iget-object v0, p0, Lcom/my/target/i$1;->m:Lcom/my/target/i;

    const/4 v1, 0x0

    const-string v2, "ad loading timeout"

    invoke-virtual {v0, v1, v2}, Lcom/my/target/b;->a(Lcom/my/target/cv;Ljava/lang/String;)V

    return-void
.end method
