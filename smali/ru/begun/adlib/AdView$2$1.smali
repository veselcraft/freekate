.class final Lru/begun/adlib/AdView$2$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/begun/adlib/AdView$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lru/begun/adlib/AdView$2;


# direct methods
.method constructor <init>(Lru/begun/adlib/AdView$2;)V
    .locals 0

    .prologue
    .line 197
    iput-object p1, p0, Lru/begun/adlib/AdView$2$1;->a:Lru/begun/adlib/AdView$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 199
    iget-object v0, p0, Lru/begun/adlib/AdView$2$1;->a:Lru/begun/adlib/AdView$2;

    iget-object v0, v0, Lru/begun/adlib/AdView$2;->a:Lru/begun/adlib/AdView;

    invoke-static {v0}, Lru/begun/adlib/AdView;->f(Lru/begun/adlib/AdView;)V

    .line 200
    return-void
.end method
