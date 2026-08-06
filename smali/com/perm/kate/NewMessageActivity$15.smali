.class Lcom/perm/kate/NewMessageActivity$15;
.super Lcom/perm/kate/smile/SmilePagerAdapter$SmileSelectedListener;
.source "NewMessageActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perm/kate/NewMessageActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/NewMessageActivity;


# direct methods
.method constructor <init>(Lcom/perm/kate/NewMessageActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/NewMessageActivity;

    .prologue
    .line 721
    iput-object p1, p0, Lcom/perm/kate/NewMessageActivity$15;->this$0:Lcom/perm/kate/NewMessageActivity;

    invoke-direct {p0}, Lcom/perm/kate/smile/SmilePagerAdapter$SmileSelectedListener;-><init>()V

    return-void
.end method


# virtual methods
.method public backspace()V
    .locals 1

    .prologue
    .line 729
    iget-object v0, p0, Lcom/perm/kate/NewMessageActivity$15;->this$0:Lcom/perm/kate/NewMessageActivity;

    invoke-static {v0}, Lcom/perm/kate/NewMessageActivity;->access$200(Lcom/perm/kate/NewMessageActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-static {v0}, Lcom/perm/utils/SmileHelper;->sendBackspace(Landroid/widget/EditText;)V

    .line 730
    return-void
.end method

.method public selected(Ljava/lang/String;)V
    .locals 1
    .param p1, "smile_code"    # Ljava/lang/String;

    .prologue
    .line 724
    iget-object v0, p0, Lcom/perm/kate/NewMessageActivity$15;->this$0:Lcom/perm/kate/NewMessageActivity;

    invoke-static {v0, p1}, Lcom/perm/kate/NewMessageActivity;->access$2300(Lcom/perm/kate/NewMessageActivity;Ljava/lang/String;)V

    .line 725
    return-void
.end method
