.class Lcom/perm/kate/SearchAudioParamsActivity$2;
.super Ljava/lang/Object;
.source "SearchAudioParamsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perm/kate/SearchAudioParamsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/SearchAudioParamsActivity;


# direct methods
.method constructor <init>(Lcom/perm/kate/SearchAudioParamsActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/SearchAudioParamsActivity;

    .prologue
    .line 44
    iput-object p1, p0, Lcom/perm/kate/SearchAudioParamsActivity$2;->this$0:Lcom/perm/kate/SearchAudioParamsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/perm/kate/SearchAudioParamsActivity$2;->this$0:Lcom/perm/kate/SearchAudioParamsActivity;

    invoke-static {v0}, Lcom/perm/kate/SearchAudioParamsActivity;->access$000(Lcom/perm/kate/SearchAudioParamsActivity;)V

    .line 48
    iget-object v0, p0, Lcom/perm/kate/SearchAudioParamsActivity$2;->this$0:Lcom/perm/kate/SearchAudioParamsActivity;

    invoke-static {v0}, Lcom/perm/kate/SearchAudioParamsActivity;->access$100(Lcom/perm/kate/SearchAudioParamsActivity;)V

    .line 49
    return-void
.end method
