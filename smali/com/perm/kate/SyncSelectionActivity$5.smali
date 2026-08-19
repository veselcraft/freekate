.class Lcom/perm/kate/SyncSelectionActivity$5;
.super Ljava/lang/Object;
.source "SyncSelectionActivity.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perm/kate/SyncSelectionActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/SyncSelectionActivity;


# direct methods
.method constructor <init>(Lcom/perm/kate/SyncSelectionActivity;)V
    .locals 0

    .line 124
    iput-object p1, p0, Lcom/perm/kate/SyncSelectionActivity$5;->this$0:Lcom/perm/kate/SyncSelectionActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 0

    .line 127
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    if-nez p1, :cond_0

    return-void

    :cond_0
    if-eqz p2, :cond_1

    .line 131
    iget-object p2, p0, Lcom/perm/kate/SyncSelectionActivity$5;->this$0:Lcom/perm/kate/SyncSelectionActivity;

    invoke-static {p2}, Lcom/perm/kate/SyncSelectionActivity;->access$200(Lcom/perm/kate/SyncSelectionActivity;)Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 133
    :cond_1
    iget-object p2, p0, Lcom/perm/kate/SyncSelectionActivity$5;->this$0:Lcom/perm/kate/SyncSelectionActivity;

    invoke-static {p2}, Lcom/perm/kate/SyncSelectionActivity;->access$200(Lcom/perm/kate/SyncSelectionActivity;)Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :goto_0
    return-void
.end method
