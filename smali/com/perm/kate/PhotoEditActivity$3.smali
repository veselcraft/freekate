.class Lcom/perm/kate/PhotoEditActivity$3;
.super Ljava/lang/Object;
.source "PhotoEditActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perm/kate/PhotoEditActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/PhotoEditActivity;


# direct methods
.method constructor <init>(Lcom/perm/kate/PhotoEditActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/PhotoEditActivity;

    .prologue
    .line 93
    iput-object p1, p0, Lcom/perm/kate/PhotoEditActivity$3;->this$0:Lcom/perm/kate/PhotoEditActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 96
    iget-object v0, p0, Lcom/perm/kate/PhotoEditActivity$3;->this$0:Lcom/perm/kate/PhotoEditActivity;

    invoke-virtual {v0}, Lcom/perm/kate/PhotoEditActivity;->finish()V

    .line 97
    return-void
.end method
