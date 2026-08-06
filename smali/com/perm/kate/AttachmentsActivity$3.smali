.class Lcom/perm/kate/AttachmentsActivity$3;
.super Ljava/lang/Object;
.source "AttachmentsActivity.java"

# interfaces
.implements Lcom/mobeta/android/dslv/DragSortListView$DropListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perm/kate/AttachmentsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/AttachmentsActivity;


# direct methods
.method constructor <init>(Lcom/perm/kate/AttachmentsActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/AttachmentsActivity;

    .prologue
    .line 123
    iput-object p1, p0, Lcom/perm/kate/AttachmentsActivity$3;->this$0:Lcom/perm/kate/AttachmentsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public drop(II)V
    .locals 3
    .param p1, "from"    # I
    .param p2, "to"    # I

    .prologue
    .line 126
    if-ne p1, p2, :cond_1

    .line 136
    :cond_0
    :goto_0
    return-void

    .line 128
    :cond_1
    iget-object v2, p0, Lcom/perm/kate/AttachmentsActivity$3;->this$0:Lcom/perm/kate/AttachmentsActivity;

    iget-object v2, v2, Lcom/perm/kate/AttachmentsActivity;->attachments:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 129
    .local v0, "a":Ljava/lang/String;
    iget-object v2, p0, Lcom/perm/kate/AttachmentsActivity$3;->this$0:Lcom/perm/kate/AttachmentsActivity;

    iget-object v2, v2, Lcom/perm/kate/AttachmentsActivity;->attachments:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 130
    iget-object v2, p0, Lcom/perm/kate/AttachmentsActivity$3;->this$0:Lcom/perm/kate/AttachmentsActivity;

    iget-object v2, v2, Lcom/perm/kate/AttachmentsActivity;->attachments:Ljava/util/ArrayList;

    invoke-virtual {v2, p2, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 131
    iget-object v2, p0, Lcom/perm/kate/AttachmentsActivity$3;->this$0:Lcom/perm/kate/AttachmentsActivity;

    iget-object v2, v2, Lcom/perm/kate/AttachmentsActivity;->attachments_objects:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    .line 132
    .local v1, "o":Ljava/lang/Object;
    iget-object v2, p0, Lcom/perm/kate/AttachmentsActivity$3;->this$0:Lcom/perm/kate/AttachmentsActivity;

    iget-object v2, v2, Lcom/perm/kate/AttachmentsActivity;->attachments_objects:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 133
    iget-object v2, p0, Lcom/perm/kate/AttachmentsActivity$3;->this$0:Lcom/perm/kate/AttachmentsActivity;

    iget-object v2, v2, Lcom/perm/kate/AttachmentsActivity;->attachments_objects:Ljava/util/ArrayList;

    invoke-virtual {v2, p2, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 134
    iget-object v2, p0, Lcom/perm/kate/AttachmentsActivity$3;->this$0:Lcom/perm/kate/AttachmentsActivity;

    invoke-static {v2}, Lcom/perm/kate/AttachmentsActivity;->access$000(Lcom/perm/kate/AttachmentsActivity;)Lcom/perm/kate/AttachmentsAdapter;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 135
    iget-object v2, p0, Lcom/perm/kate/AttachmentsActivity$3;->this$0:Lcom/perm/kate/AttachmentsActivity;

    invoke-static {v2}, Lcom/perm/kate/AttachmentsActivity;->access$000(Lcom/perm/kate/AttachmentsActivity;)Lcom/perm/kate/AttachmentsAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/perm/kate/AttachmentsAdapter;->notifyDataSetChanged()V

    goto :goto_0
.end method
