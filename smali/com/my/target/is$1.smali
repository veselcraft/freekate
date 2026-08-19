.class Lcom/my/target/is$1;
.super Ljava/lang/Object;
.source "Repeater.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic pE:Lcom/my/target/is;


# direct methods
.method constructor <init>(Lcom/my/target/is;)V
    .locals 0

    .line 33
    iput-object p1, p0, Lcom/my/target/is$1;->pE:Lcom/my/target/is;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/my/target/is$1;->pE:Lcom/my/target/is;

    invoke-static {v0}, Lcom/my/target/is;->a(Lcom/my/target/is;)V

    return-void
.end method
