.class Lcom/perm/kate/WallPostActivity$19;
.super Lcom/perm/kate/smile/SmilePagerAdapter$SmileSelectedListener;
.source "WallPostActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perm/kate/WallPostActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/WallPostActivity;


# direct methods
.method constructor <init>(Lcom/perm/kate/WallPostActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/WallPostActivity;

    .prologue
    .line 1080
    iput-object p1, p0, Lcom/perm/kate/WallPostActivity$19;->this$0:Lcom/perm/kate/WallPostActivity;

    invoke-direct {p0}, Lcom/perm/kate/smile/SmilePagerAdapter$SmileSelectedListener;-><init>()V

    return-void
.end method


# virtual methods
.method public backspace()V
    .locals 1

    .prologue
    .line 1088
    iget-object v0, p0, Lcom/perm/kate/WallPostActivity$19;->this$0:Lcom/perm/kate/WallPostActivity;

    invoke-static {v0}, Lcom/perm/kate/WallPostActivity;->access$000(Lcom/perm/kate/WallPostActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-static {v0}, Lcom/perm/utils/SmileHelper;->sendBackspace(Landroid/widget/EditText;)V

    .line 1089
    return-void
.end method

.method public selected(Ljava/lang/String;)V
    .locals 1
    .param p1, "smile_code"    # Ljava/lang/String;

    .prologue
    .line 1083
    iget-object v0, p0, Lcom/perm/kate/WallPostActivity$19;->this$0:Lcom/perm/kate/WallPostActivity;

    invoke-static {v0, p1}, Lcom/perm/kate/WallPostActivity;->access$3700(Lcom/perm/kate/WallPostActivity;Ljava/lang/String;)V

    .line 1084
    return-void
.end method
