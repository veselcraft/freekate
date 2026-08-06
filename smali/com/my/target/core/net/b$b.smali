.class final Lcom/my/target/core/net/b$b;
.super Ljava/lang/Object;
.source "MediaLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/my/target/core/net/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# static fields
.field private static final a:Lcom/my/target/core/net/b;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 140
    new-instance v0, Lcom/my/target/core/net/b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/my/target/core/net/b;-><init>(B)V

    sput-object v0, Lcom/my/target/core/net/b$b;->a:Lcom/my/target/core/net/b;

    return-void
.end method

.method static synthetic a()Lcom/my/target/core/net/b;
    .locals 1

    .prologue
    .line 138
    sget-object v0, Lcom/my/target/core/net/b$b;->a:Lcom/my/target/core/net/b;

    return-object v0
.end method
