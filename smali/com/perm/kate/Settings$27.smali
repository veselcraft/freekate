.class Lcom/perm/kate/Settings$27;
.super Ljava/lang/Object;
.source "Settings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perm/kate/Settings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/Settings;


# direct methods
.method constructor <init>(Lcom/perm/kate/Settings;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/Settings;

    .prologue
    .line 793
    iput-object p1, p0, Lcom/perm/kate/Settings$27;->this$0:Lcom/perm/kate/Settings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 1
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 796
    iget-object v0, p0, Lcom/perm/kate/Settings$27;->this$0:Lcom/perm/kate/Settings;

    invoke-static {v0}, Lcom/perm/kate/Settings;->access$1100(Lcom/perm/kate/Settings;)V

    .line 797
    const/4 v0, 0x0

    return v0
.end method
