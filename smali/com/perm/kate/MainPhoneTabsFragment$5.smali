.class Lcom/perm/kate/MainPhoneTabsFragment$5;
.super Ljava/lang/Object;
.source "MainPhoneTabsFragment.java"

# interfaces
.implements Lcom/perm/kate/Counter$CounterListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perm/kate/MainPhoneTabsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/MainPhoneTabsFragment;


# direct methods
.method constructor <init>(Lcom/perm/kate/MainPhoneTabsFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/MainPhoneTabsFragment;

    .prologue
    .line 134
    iput-object p1, p0, Lcom/perm/kate/MainPhoneTabsFragment$5;->this$0:Lcom/perm/kate/MainPhoneTabsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public changed(I)V
    .locals 1
    .param p1, "new_value"    # I

    .prologue
    .line 137
    iget-object v0, p0, Lcom/perm/kate/MainPhoneTabsFragment$5;->this$0:Lcom/perm/kate/MainPhoneTabsFragment;

    invoke-static {v0, p1}, Lcom/perm/kate/MainPhoneTabsFragment;->access$000(Lcom/perm/kate/MainPhoneTabsFragment;I)V

    .line 138
    return-void
.end method
