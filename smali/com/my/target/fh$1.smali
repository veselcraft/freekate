.class Lcom/my/target/fh$1;
.super Ljava/lang/Object;
.source "DeviceParamsDataProvider.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic gY:Lcom/my/target/fh;


# direct methods
.method constructor <init>(Lcom/my/target/fh;)V
    .locals 0

    .line 187
    iput-object p1, p0, Lcom/my/target/fh$1;->gY:Lcom/my/target/fh;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 190
    iget-object v0, p0, Lcom/my/target/fh$1;->gY:Lcom/my/target/fh;

    invoke-static {v0}, Lcom/my/target/fh;->a(Lcom/my/target/fh;)Z

    move-result v0

    .line 191
    iget-object v1, p0, Lcom/my/target/fh$1;->gY:Lcom/my/target/fh;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "rooted"

    invoke-virtual {v1, v2, v0}, Lcom/my/target/fj;->addParam(Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method
