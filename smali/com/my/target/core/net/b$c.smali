.class final Lcom/my/target/core/net/b$c;
.super Ljava/lang/Object;
.source "MediaLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/my/target/core/net/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "c"
.end annotation


# instance fields
.field public final a:Lcom/my/target/core/net/b$a;

.field public final b:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field

.field public c:I


# direct methods
.method private constructor <init>(Lcom/my/target/core/net/b$a;Landroid/widget/ImageView;)V
    .locals 1

    .prologue
    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 123
    const/4 v0, 0x1

    iput v0, p0, Lcom/my/target/core/net/b$c;->c:I

    .line 127
    iput-object p1, p0, Lcom/my/target/core/net/b$c;->a:Lcom/my/target/core/net/b$a;

    .line 128
    if-eqz p2, :cond_0

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/my/target/core/net/b$c;->b:Ljava/lang/ref/WeakReference;

    .line 130
    :goto_0
    return-void

    .line 129
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/my/target/core/net/b$c;->b:Ljava/lang/ref/WeakReference;

    goto :goto_0
.end method

.method synthetic constructor <init>(Lcom/my/target/core/net/b$a;Landroid/widget/ImageView;B)V
    .locals 0

    .prologue
    .line 119
    invoke-direct {p0, p1, p2}, Lcom/my/target/core/net/b$c;-><init>(Lcom/my/target/core/net/b$a;Landroid/widget/ImageView;)V

    return-void
.end method
