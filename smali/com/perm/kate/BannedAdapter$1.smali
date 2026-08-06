.class Lcom/perm/kate/BannedAdapter$1;
.super Ljava/lang/Object;
.source "BannedAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perm/kate/BannedAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/BannedAdapter;


# direct methods
.method constructor <init>(Lcom/perm/kate/BannedAdapter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/BannedAdapter;

    .prologue
    .line 100
    iput-object p1, p0, Lcom/perm/kate/BannedAdapter$1;->this$0:Lcom/perm/kate/BannedAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 103
    iget-object v0, p0, Lcom/perm/kate/BannedAdapter$1;->this$0:Lcom/perm/kate/BannedAdapter;

    invoke-static {v0}, Lcom/perm/kate/BannedAdapter;->access$000(Lcom/perm/kate/BannedAdapter;)Landroid/app/Activity;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/perm/kate/NewsCursorAdapter;->profileClick(Landroid/view/View;Landroid/app/Activity;)V

    .line 104
    return-void
.end method
