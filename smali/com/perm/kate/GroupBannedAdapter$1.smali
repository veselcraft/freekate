.class Lcom/perm/kate/GroupBannedAdapter$1;
.super Ljava/lang/Object;
.source "GroupBannedAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/perm/kate/GroupBannedAdapter;


# direct methods
.method constructor <init>(Lcom/perm/kate/GroupBannedAdapter;)V
    .locals 0

    .line 108
    iput-object p1, p0, Lcom/perm/kate/GroupBannedAdapter$1;->this$0:Lcom/perm/kate/GroupBannedAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 111
    iget-object v0, p0, Lcom/perm/kate/GroupBannedAdapter$1;->this$0:Lcom/perm/kate/GroupBannedAdapter;

    invoke-static {v0}, Lcom/perm/kate/GroupBannedAdapter;->access$000(Lcom/perm/kate/GroupBannedAdapter;)Landroid/app/Activity;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/perm/kate/NewsCursorAdapter;->profileClick(Landroid/view/View;Landroid/app/Activity;)V

    return-void
.end method
