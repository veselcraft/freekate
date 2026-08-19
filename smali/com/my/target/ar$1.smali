.class Lcom/my/target/ar$1;
.super Ljava/lang/Object;
.source "InstreamAudioAdEngine.java"

# interfaces
.implements Lcom/my/target/b$b;


# instance fields
.field final synthetic aJ:Lcom/my/target/da;

.field final synthetic aR:Lcom/my/target/ar;


# direct methods
.method constructor <init>(Lcom/my/target/ar;Lcom/my/target/da;)V
    .locals 0

    .line 373
    iput-object p1, p0, Lcom/my/target/ar$1;->aR:Lcom/my/target/ar;

    iput-object p2, p0, Lcom/my/target/ar$1;->aJ:Lcom/my/target/da;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onResult(Lcom/my/target/cv;Ljava/lang/String;)V
    .locals 0

    .line 373
    check-cast p1, Lcom/my/target/cx;

    invoke-virtual {p0, p1, p2}, Lcom/my/target/ar$1;->onResult(Lcom/my/target/cx;Ljava/lang/String;)V

    return-void
.end method

.method public onResult(Lcom/my/target/cx;Ljava/lang/String;)V
    .locals 2

    .line 377
    iget-object v0, p0, Lcom/my/target/ar$1;->aR:Lcom/my/target/ar;

    iget-object v1, p0, Lcom/my/target/ar$1;->aJ:Lcom/my/target/da;

    invoke-static {v0, v1, p1, p2}, Lcom/my/target/ar;->a(Lcom/my/target/ar;Lcom/my/target/da;Lcom/my/target/cx;Ljava/lang/String;)V

    return-void
.end method
