.class final Lcom/my/target/core/ui/b$1;
.super Ljava/lang/Object;
.source "VideoDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/my/target/core/ui/b;->a(Lcom/my/target/core/ui/b$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/my/target/core/ui/b;


# direct methods
.method constructor <init>(Lcom/my/target/core/ui/b;)V
    .locals 0

    .prologue
    .line 68
    iput-object p1, p0, Lcom/my/target/core/ui/b$1;->a:Lcom/my/target/core/ui/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/my/target/core/ui/b$1;->a:Lcom/my/target/core/ui/b;

    invoke-virtual {v0}, Lcom/my/target/core/ui/b;->dismiss()V

    .line 73
    return-void
.end method
