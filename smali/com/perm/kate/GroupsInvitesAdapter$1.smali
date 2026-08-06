.class Lcom/perm/kate/GroupsInvitesAdapter$1;
.super Ljava/lang/Object;
.source "GroupsInvitesAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perm/kate/GroupsInvitesAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/GroupsInvitesAdapter;


# direct methods
.method constructor <init>(Lcom/perm/kate/GroupsInvitesAdapter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/GroupsInvitesAdapter;

    .prologue
    .line 100
    iput-object p1, p0, Lcom/perm/kate/GroupsInvitesAdapter$1;->this$0:Lcom/perm/kate/GroupsInvitesAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 103
    iget-object v0, p0, Lcom/perm/kate/GroupsInvitesAdapter$1;->this$0:Lcom/perm/kate/GroupsInvitesAdapter;

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Lcom/perm/kate/GroupsInvitesAdapter;->access$000(Lcom/perm/kate/GroupsInvitesAdapter;Landroid/view/View;Z)V

    .line 104
    return-void
.end method
