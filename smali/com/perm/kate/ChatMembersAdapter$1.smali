.class Lcom/perm/kate/ChatMembersAdapter$1;
.super Ljava/lang/Object;
.source "ChatMembersAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perm/kate/ChatMembersAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/ChatMembersAdapter;


# direct methods
.method constructor <init>(Lcom/perm/kate/ChatMembersAdapter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/ChatMembersAdapter;

    .prologue
    .line 86
    iput-object p1, p0, Lcom/perm/kate/ChatMembersAdapter$1;->this$0:Lcom/perm/kate/ChatMembersAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 89
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 90
    .local v0, "uid":Ljava/lang/Long;
    if-eqz v0, :cond_0

    .line 91
    iget-object v1, p0, Lcom/perm/kate/ChatMembersAdapter$1;->this$0:Lcom/perm/kate/ChatMembersAdapter;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/perm/kate/ChatMembersAdapter;->access$000(Lcom/perm/kate/ChatMembersAdapter;J)V

    .line 93
    :cond_0
    return-void
.end method
