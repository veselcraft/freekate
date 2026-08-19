.class Lcom/my/target/aj$c;
.super Ljava/lang/Object;
.source "InstreamAdAudioController.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic K:Lcom/my/target/aj;


# direct methods
.method private constructor <init>(Lcom/my/target/aj;)V
    .locals 0

    .line 424
    iput-object p1, p0, Lcom/my/target/aj$c;->K:Lcom/my/target/aj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/my/target/aj;Lcom/my/target/aj$1;)V
    .locals 0

    .line 424
    invoke-direct {p0, p1}, Lcom/my/target/aj$c;-><init>(Lcom/my/target/aj;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 429
    iget-object v0, p0, Lcom/my/target/aj$c;->K:Lcom/my/target/aj;

    invoke-static {v0}, Lcom/my/target/aj;->i(Lcom/my/target/aj;)V

    return-void
.end method
