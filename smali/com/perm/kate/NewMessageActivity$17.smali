.class Lcom/perm/kate/NewMessageActivity$17;
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

    .line 798
    iput-object p1, p0, Lcom/perm/kate/NewMessageActivity$17;->this$0:Lcom/perm/kate/NewMessageActivity;

    invoke-direct {p0}, Lcom/perm/kate/smile/SmilePagerAdapter$SmileSelectedListener;-><init>()V

    return-void
.end method


# virtual methods
.method public backspace()V
    .locals 1

    .line 806
    iget-object v0, p0, Lcom/perm/kate/NewMessageActivity$17;->this$0:Lcom/perm/kate/NewMessageActivity;

    invoke-static {v0}, Lcom/perm/kate/NewMessageActivity;->access$200(Lcom/perm/kate/NewMessageActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-static {v0}, Lcom/perm/utils/SmileHelper;->sendBackspace(Landroid/widget/EditText;)V

    return-void
.end method

.method public selected(Ljava/lang/String;)V
    .locals 1

    .line 801
    iget-object v0, p0, Lcom/perm/kate/NewMessageActivity$17;->this$0:Lcom/perm/kate/NewMessageActivity;

    invoke-static {v0, p1}, Lcom/perm/kate/NewMessageActivity;->access$2400(Lcom/perm/kate/NewMessageActivity;Ljava/lang/String;)V

    return-void
.end method
