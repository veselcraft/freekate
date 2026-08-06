.class final Lcom/my/target/core/facades/b$2;
.super Ljava/lang/Object;
.source "AbstractNativeAd.java"

# interfaces
.implements Lcom/my/target/core/net/b$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/my/target/core/facades/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/my/target/core/facades/b;


# direct methods
.method constructor <init>(Lcom/my/target/core/facades/b;)V
    .locals 0

    .prologue
    .line 140
    iput-object p1, p0, Lcom/my/target/core/facades/b$2;->a:Lcom/my/target/core/facades/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onLoad()V
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Lcom/my/target/core/facades/b$2;->a:Lcom/my/target/core/facades/b;

    invoke-static {v0}, Lcom/my/target/core/facades/b;->access$000(Lcom/my/target/core/facades/b;)V

    .line 146
    return-void
.end method
