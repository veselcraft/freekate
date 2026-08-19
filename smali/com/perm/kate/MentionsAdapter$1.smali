.class Lcom/perm/kate/MentionsAdapter$1;
.super Ljava/lang/Object;
.source "MentionsAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/perm/kate/MentionsAdapter;


# direct methods
.method constructor <init>(Lcom/perm/kate/MentionsAdapter;)V
    .locals 0

    .line 76
    iput-object p1, p0, Lcom/perm/kate/MentionsAdapter$1;->this$0:Lcom/perm/kate/MentionsAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 79
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/perm/kate/api/ChatMember;

    if-eqz p1, :cond_0

    .line 80
    iget-object v0, p0, Lcom/perm/kate/MentionsAdapter$1;->this$0:Lcom/perm/kate/MentionsAdapter;

    iget-object v0, v0, Lcom/perm/kate/MentionsAdapter;->listener:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 81
    iget-object v0, p0, Lcom/perm/kate/MentionsAdapter$1;->this$0:Lcom/perm/kate/MentionsAdapter;

    iget-object v0, v0, Lcom/perm/kate/MentionsAdapter;->listener:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/perm/kate/MentionsAdapter$MentionSelectedListener;

    invoke-virtual {v0, p1}, Lcom/perm/kate/MentionsAdapter$MentionSelectedListener;->selected(Lcom/perm/kate/api/ChatMember;)V

    :cond_0
    return-void
.end method
