.class Lcom/perm/kate/MainPhoneTabsFragment$6;
.super Ljava/lang/Object;
.source "MainPhoneTabsFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/MainPhoneTabsFragment;->displayMessagesCounter(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/MainPhoneTabsFragment;

.field final synthetic val$new_value:I


# direct methods
.method constructor <init>(Lcom/perm/kate/MainPhoneTabsFragment;I)V
    .locals 0

    .line 147
    iput-object p1, p0, Lcom/perm/kate/MainPhoneTabsFragment$6;->this$0:Lcom/perm/kate/MainPhoneTabsFragment;

    iput p2, p0, Lcom/perm/kate/MainPhoneTabsFragment$6;->val$new_value:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetTextI18n"
        }
    .end annotation

    .line 151
    iget v0, p0, Lcom/perm/kate/MainPhoneTabsFragment$6;->val$new_value:I

    if-eqz v0, :cond_0

    .line 152
    iget-object v1, p0, Lcom/perm/kate/MainPhoneTabsFragment$6;->this$0:Lcom/perm/kate/MainPhoneTabsFragment;

    iget-object v1, v1, Lcom/perm/kate/MainPhoneTabsFragment;->messagesCounter:Landroid/widget/TextView;

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 153
    iget-object v0, p0, Lcom/perm/kate/MainPhoneTabsFragment$6;->this$0:Lcom/perm/kate/MainPhoneTabsFragment;

    iget-object v0, v0, Lcom/perm/kate/MainPhoneTabsFragment;->messagesCounter:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 156
    :cond_0
    iget-object v0, p0, Lcom/perm/kate/MainPhoneTabsFragment$6;->this$0:Lcom/perm/kate/MainPhoneTabsFragment;

    iget-object v0, v0, Lcom/perm/kate/MainPhoneTabsFragment;->messagesCounter:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    return-void
.end method
