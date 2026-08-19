.class Lcom/my/target/ar$2;
.super Ljava/lang/Object;
.source "InstreamAudioAdEngine.java"

# interfaces
.implements Lcom/my/target/b$b;


# instance fields
.field final synthetic aJ:Lcom/my/target/da;

.field final synthetic aL:F

.field final synthetic aR:Lcom/my/target/ar;


# direct methods
.method constructor <init>(Lcom/my/target/ar;Lcom/my/target/da;F)V
    .locals 0

    .line 423
    iput-object p1, p0, Lcom/my/target/ar$2;->aR:Lcom/my/target/ar;

    iput-object p2, p0, Lcom/my/target/ar$2;->aJ:Lcom/my/target/da;

    iput p3, p0, Lcom/my/target/ar$2;->aL:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onResult(Lcom/my/target/cv;Ljava/lang/String;)V
    .locals 0

    .line 423
    check-cast p1, Lcom/my/target/cx;

    invoke-virtual {p0, p1, p2}, Lcom/my/target/ar$2;->onResult(Lcom/my/target/cx;Ljava/lang/String;)V

    return-void
.end method

.method public onResult(Lcom/my/target/cx;Ljava/lang/String;)V
    .locals 3

    .line 427
    iget-object v0, p0, Lcom/my/target/ar$2;->aR:Lcom/my/target/ar;

    iget-object v1, p0, Lcom/my/target/ar$2;->aJ:Lcom/my/target/da;

    iget v2, p0, Lcom/my/target/ar$2;->aL:F

    invoke-static {v0, v1, p1, p2, v2}, Lcom/my/target/ar;->a(Lcom/my/target/ar;Lcom/my/target/da;Lcom/my/target/cx;Ljava/lang/String;F)V

    return-void
.end method
