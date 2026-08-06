.class Lcom/perm/kate/GroupBannedAdapter$1;
.super Ljava/lang/Object;
.source "GroupBannedAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perm/kate/GroupBannedAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/GroupBannedAdapter;


# direct methods
.method constructor <init>(Lcom/perm/kate/GroupBannedAdapter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/GroupBannedAdapter;

    .prologue
    .line 102
    iput-object p1, p0, Lcom/perm/kate/GroupBannedAdapter$1;->this$0:Lcom/perm/kate/GroupBannedAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 105
    iget-object v0, p0, Lcom/perm/kate/GroupBannedAdapter$1;->this$0:Lcom/perm/kate/GroupBannedAdapter;

    invoke-static {v0}, Lcom/perm/kate/GroupBannedAdapter;->access$000(Lcom/perm/kate/GroupBannedAdapter;)Landroid/app/Activity;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/perm/kate/NewsCursorAdapter;->profileClick(Landroid/view/View;Landroid/app/Activity;)V

    .line 106
    return-void
.end method
