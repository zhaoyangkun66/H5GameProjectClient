.class public L㚬/㧦/㺴/㺴;
.super Landroidx/fragment/app/Fragment;
.source ""

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;
.implements Landroid/content/DialogInterface$OnDismissListener;


# static fields
.field private static final SAVED_BACK_STACK_ID:Ljava/lang/String; = "android:backStackId"

.field private static final SAVED_CANCELABLE:Ljava/lang/String; = "android:cancelable"

.field private static final SAVED_DIALOG_STATE_TAG:Ljava/lang/String; = "android:savedDialogState"

.field private static final SAVED_INTERNAL_DIALOG_SHOWING:Ljava/lang/String; = "android:dialogShowing"

.field private static final SAVED_SHOWS_DIALOG:Ljava/lang/String; = "android:showsDialog"

.field private static final SAVED_STYLE:Ljava/lang/String; = "android:style"

.field private static final SAVED_THEME:Ljava/lang/String; = "android:theme"

.field public static final STYLE_NORMAL:I = 0x0

.field public static final STYLE_NO_FRAME:I = 0x2

.field public static final STYLE_NO_INPUT:I = 0x3

.field public static final STYLE_NO_TITLE:I = 0x1


# instance fields
.field private mBackStackId:I

.field private mCancelable:Z

.field private mCreatingDialog:Z

.field private mDialog:Landroid/app/Dialog;

.field private mDialogCreated:Z

.field private mDismissRunnable:Ljava/lang/Runnable;

.field private mDismissed:Z

.field private mHandler:Landroid/os/Handler;

.field private mObserver:L㚬/ἥ/ཇ;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "L\u36ac/\u1f25/\u0f47<",
            "L\u36ac/\u1f25/\u2113;",
            ">;"
        }
    .end annotation
.end field

.field private mOnCancelListener:Landroid/content/DialogInterface$OnCancelListener;

.field private mOnDismissListener:Landroid/content/DialogInterface$OnDismissListener;

.field private mShownByMe:Z

.field private mShowsDialog:Z

.field private mStyle:I

.field private mTheme:I

.field private mViewDestroyed:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    new-instance v0, L㚬/㧦/㺴/㺴$உ;

    invoke-direct {v0, p0}, L㚬/㧦/㺴/㺴$உ;-><init>(L㚬/㧦/㺴/㺴;)V

    iput-object v0, p0, L㚬/㧦/㺴/㺴;->mDismissRunnable:Ljava/lang/Runnable;

    new-instance v0, L㚬/㧦/㺴/㺴$䂻;

    invoke-direct {v0, p0}, L㚬/㧦/㺴/㺴$䂻;-><init>(L㚬/㧦/㺴/㺴;)V

    iput-object v0, p0, L㚬/㧦/㺴/㺴;->mOnCancelListener:Landroid/content/DialogInterface$OnCancelListener;

    new-instance v0, L㚬/㧦/㺴/㺴$㚬;

    invoke-direct {v0, p0}, L㚬/㧦/㺴/㺴$㚬;-><init>(L㚬/㧦/㺴/㺴;)V

    iput-object v0, p0, L㚬/㧦/㺴/㺴;->mOnDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    const/4 v0, 0x0

    iput v0, p0, L㚬/㧦/㺴/㺴;->mStyle:I

    iput v0, p0, L㚬/㧦/㺴/㺴;->mTheme:I

    const/4 v1, 0x1

    iput-boolean v1, p0, L㚬/㧦/㺴/㺴;->mCancelable:Z

    iput-boolean v1, p0, L㚬/㧦/㺴/㺴;->mShowsDialog:Z

    const/4 v1, -0x1

    iput v1, p0, L㚬/㧦/㺴/㺴;->mBackStackId:I

    new-instance v1, L㚬/㧦/㺴/㺴$㺴;

    invoke-direct {v1, p0}, L㚬/㧦/㺴/㺴$㺴;-><init>(L㚬/㧦/㺴/㺴;)V

    iput-object v1, p0, L㚬/㧦/㺴/㺴;->mObserver:L㚬/ἥ/ཇ;

    iput-boolean v0, p0, L㚬/㧦/㺴/㺴;->mDialogCreated:Z

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    invoke-direct {p0, p1}, Landroidx/fragment/app/Fragment;-><init>(I)V

    new-instance p1, L㚬/㧦/㺴/㺴$உ;

    invoke-direct {p1, p0}, L㚬/㧦/㺴/㺴$உ;-><init>(L㚬/㧦/㺴/㺴;)V

    iput-object p1, p0, L㚬/㧦/㺴/㺴;->mDismissRunnable:Ljava/lang/Runnable;

    new-instance p1, L㚬/㧦/㺴/㺴$䂻;

    invoke-direct {p1, p0}, L㚬/㧦/㺴/㺴$䂻;-><init>(L㚬/㧦/㺴/㺴;)V

    iput-object p1, p0, L㚬/㧦/㺴/㺴;->mOnCancelListener:Landroid/content/DialogInterface$OnCancelListener;

    new-instance p1, L㚬/㧦/㺴/㺴$㚬;

    invoke-direct {p1, p0}, L㚬/㧦/㺴/㺴$㚬;-><init>(L㚬/㧦/㺴/㺴;)V

    iput-object p1, p0, L㚬/㧦/㺴/㺴;->mOnDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    const/4 p1, 0x0

    iput p1, p0, L㚬/㧦/㺴/㺴;->mStyle:I

    iput p1, p0, L㚬/㧦/㺴/㺴;->mTheme:I

    const/4 v0, 0x1

    iput-boolean v0, p0, L㚬/㧦/㺴/㺴;->mCancelable:Z

    iput-boolean v0, p0, L㚬/㧦/㺴/㺴;->mShowsDialog:Z

    const/4 v0, -0x1

    iput v0, p0, L㚬/㧦/㺴/㺴;->mBackStackId:I

    new-instance v0, L㚬/㧦/㺴/㺴$㺴;

    invoke-direct {v0, p0}, L㚬/㧦/㺴/㺴$㺴;-><init>(L㚬/㧦/㺴/㺴;)V

    iput-object v0, p0, L㚬/㧦/㺴/㺴;->mObserver:L㚬/ἥ/ཇ;

    iput-boolean p1, p0, L㚬/㧦/㺴/㺴;->mDialogCreated:Z

    return-void
.end method

.method public static synthetic access$000(L㚬/㧦/㺴/㺴;)Landroid/app/Dialog;
    .locals 0

    iget-object p0, p0, L㚬/㧦/㺴/㺴;->mDialog:Landroid/app/Dialog;

    return-object p0
.end method

.method public static synthetic access$100(L㚬/㧦/㺴/㺴;)Landroid/content/DialogInterface$OnDismissListener;
    .locals 0

    iget-object p0, p0, L㚬/㧦/㺴/㺴;->mOnDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    return-object p0
.end method

.method public static synthetic access$200(L㚬/㧦/㺴/㺴;)Z
    .locals 0

    iget-boolean p0, p0, L㚬/㧦/㺴/㺴;->mShowsDialog:Z

    return p0
.end method

.method private dismissInternal(ZZ)V
    .locals 3

    iget-boolean v0, p0, L㚬/㧦/㺴/㺴;->mDismissed:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, L㚬/㧦/㺴/㺴;->mDismissed:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, L㚬/㧦/㺴/㺴;->mShownByMe:Z

    iget-object v1, p0, L㚬/㧦/㺴/㺴;->mDialog:Landroid/app/Dialog;

    if-eqz v1, :cond_2

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    iget-object v1, p0, L㚬/㧦/㺴/㺴;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    if-nez p2, :cond_2

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p2

    iget-object v1, p0, L㚬/㧦/㺴/㺴;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne p2, v1, :cond_1

    iget-object p2, p0, L㚬/㧦/㺴/㺴;->mDialog:Landroid/app/Dialog;

    invoke-virtual {p0, p2}, L㚬/㧦/㺴/㺴;->onDismiss(Landroid/content/DialogInterface;)V

    goto :goto_0

    :cond_1
    iget-object p2, p0, L㚬/㧦/㺴/㺴;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, L㚬/㧦/㺴/㺴;->mDismissRunnable:Ljava/lang/Runnable;

    invoke-virtual {p2, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_2
    :goto_0
    iput-boolean v0, p0, L㚬/㧦/㺴/㺴;->mViewDestroyed:Z

    iget p2, p0, L㚬/㧦/㺴/㺴;->mBackStackId:I

    if-ltz p2, :cond_3

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragmentManager()L㚬/㧦/㺴/ἥ;

    move-result-object p1

    iget p2, p0, L㚬/㧦/㺴/㺴;->mBackStackId:I

    invoke-virtual {p1, p2, v0}, L㚬/㧦/㺴/ἥ;->ѵ(II)V

    const/4 p1, -0x1

    iput p1, p0, L㚬/㧦/㺴/㺴;->mBackStackId:I

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragmentManager()L㚬/㧦/㺴/ἥ;

    move-result-object p2

    invoke-virtual {p2}, L㚬/㧦/㺴/ἥ;->ἥ()L㚬/㧦/㺴/㢏;

    move-result-object p2

    invoke-virtual {p2, p0}, L㚬/㧦/㺴/㢏;->㹖(Landroidx/fragment/app/Fragment;)L㚬/㧦/㺴/㢏;

    if-eqz p1, :cond_4

    invoke-virtual {p2}, L㚬/㧦/㺴/㢏;->ᆻ()I

    goto :goto_1

    :cond_4
    invoke-virtual {p2}, L㚬/㧦/㺴/㢏;->䆀()I

    :goto_1
    return-void
.end method

.method private prepareDialog(Landroid/os/Bundle;)V
    .locals 3

    iget-boolean v0, p0, L㚬/㧦/㺴/㺴;->mShowsDialog:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, L㚬/㧦/㺴/㺴;->mDialogCreated:Z

    if-nez v0, :cond_3

    const/4 v0, 0x0

    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, L㚬/㧦/㺴/㺴;->mCreatingDialog:Z

    invoke-virtual {p0, p1}, L㚬/㧦/㺴/㺴;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object p1

    iput-object p1, p0, L㚬/㧦/㺴/㺴;->mDialog:Landroid/app/Dialog;

    iget-boolean v2, p0, L㚬/㧦/㺴/㺴;->mShowsDialog:Z

    if-eqz v2, :cond_2

    iget v2, p0, L㚬/㧦/㺴/㺴;->mStyle:I

    invoke-virtual {p0, p1, v2}, L㚬/㧦/㺴/㺴;->setupDialog(Landroid/app/Dialog;I)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    instance-of v2, p1, Landroid/app/Activity;

    if-eqz v2, :cond_1

    iget-object v2, p0, L㚬/㧦/㺴/㺴;->mDialog:Landroid/app/Dialog;

    check-cast p1, Landroid/app/Activity;

    invoke-virtual {v2, p1}, Landroid/app/Dialog;->setOwnerActivity(Landroid/app/Activity;)V

    :cond_1
    iget-object p1, p0, L㚬/㧦/㺴/㺴;->mDialog:Landroid/app/Dialog;

    iget-boolean v2, p0, L㚬/㧦/㺴/㺴;->mCancelable:Z

    invoke-virtual {p1, v2}, Landroid/app/Dialog;->setCancelable(Z)V

    iget-object p1, p0, L㚬/㧦/㺴/㺴;->mDialog:Landroid/app/Dialog;

    iget-object v2, p0, L㚬/㧦/㺴/㺴;->mOnCancelListener:Landroid/content/DialogInterface$OnCancelListener;

    invoke-virtual {p1, v2}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    iget-object p1, p0, L㚬/㧦/㺴/㺴;->mDialog:Landroid/app/Dialog;

    iget-object v2, p0, L㚬/㧦/㺴/㺴;->mOnDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    invoke-virtual {p1, v2}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    iput-boolean v1, p0, L㚬/㧦/㺴/㺴;->mDialogCreated:Z

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    iput-object p1, p0, L㚬/㧦/㺴/㺴;->mDialog:Landroid/app/Dialog;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    iput-boolean v0, p0, L㚬/㧦/㺴/㺴;->mCreatingDialog:Z

    goto :goto_1

    :catchall_0
    move-exception p1

    iput-boolean v0, p0, L㚬/㧦/㺴/㺴;->mCreatingDialog:Z

    throw p1

    :cond_3
    :goto_1
    return-void
.end method


# virtual methods
.method public createFragmentContainer()L㚬/㧦/㺴/䆀;
    .locals 2

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->createFragmentContainer()L㚬/㧦/㺴/䆀;

    move-result-object v0

    new-instance v1, L㚬/㧦/㺴/㺴$ḓ;

    invoke-direct {v1, p0, v0}, L㚬/㧦/㺴/㺴$ḓ;-><init>(L㚬/㧦/㺴/㺴;L㚬/㧦/㺴/䆀;)V

    return-object v1
.end method

.method public dismiss()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0, v0}, L㚬/㧦/㺴/㺴;->dismissInternal(ZZ)V

    return-void
.end method

.method public dismissAllowingStateLoss()V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, L㚬/㧦/㺴/㺴;->dismissInternal(ZZ)V

    return-void
.end method

.method public getDialog()Landroid/app/Dialog;
    .locals 1

    iget-object v0, p0, L㚬/㧦/㺴/㺴;->mDialog:Landroid/app/Dialog;

    return-object v0
.end method

.method public getShowsDialog()Z
    .locals 1

    iget-boolean v0, p0, L㚬/㧦/㺴/㺴;->mShowsDialog:Z

    return v0
.end method

.method public getTheme()I
    .locals 1

    iget v0, p0, L㚬/㧦/㺴/㺴;->mTheme:I

    return v0
.end method

.method public isCancelable()Z
    .locals 1

    iget-boolean v0, p0, L㚬/㧦/㺴/㺴;->mCancelable:Z

    return v0
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 1

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onAttach(Landroid/content/Context;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwnerLiveData()Landroidx/lifecycle/LiveData;

    move-result-object p1

    iget-object v0, p0, L㚬/㧦/㺴/㺴;->mObserver:L㚬/ἥ/ཇ;

    invoke-virtual {p1, v0}, Landroidx/lifecycle/LiveData;->䆀(L㚬/ἥ/ཇ;)V

    iget-boolean p1, p0, L㚬/㧦/㺴/㺴;->mShownByMe:Z

    if-nez p1, :cond_0

    const/4 p1, 0x0

    iput-boolean p1, p0, L㚬/㧦/㺴/㺴;->mDismissed:Z

    :cond_0
    return-void
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 0

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, L㚬/㧦/㺴/㺴;->mHandler:Landroid/os/Handler;

    iget v0, p0, Landroidx/fragment/app/Fragment;->mContainerId:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, L㚬/㧦/㺴/㺴;->mShowsDialog:Z

    if-eqz p1, :cond_1

    const-string v0, "android:style"

    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, L㚬/㧦/㺴/㺴;->mStyle:I

    const-string v0, "android:theme"

    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, L㚬/㧦/㺴/㺴;->mTheme:I

    const-string v0, "android:cancelable"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, L㚬/㧦/㺴/㺴;->mCancelable:Z

    iget-boolean v0, p0, L㚬/㧦/㺴/㺴;->mShowsDialog:Z

    const-string v1, "android:showsDialog"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, L㚬/㧦/㺴/㺴;->mShowsDialog:Z

    const/4 v0, -0x1

    const-string v1, "android:backStackId"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, L㚬/㧦/㺴/㺴;->mBackStackId:I

    :cond_1
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 2

    const/4 p1, 0x3

    invoke-static {p1}, L㚬/㧦/㺴/ἥ;->ፖ(I)Z

    move-result p1

    if-eqz p1, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onCreateDialog called for DialogFragment "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "FragmentManager"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    new-instance p1, Landroid/app/Dialog;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, L㚬/㧦/㺴/㺴;->getTheme()I

    move-result v1

    invoke-direct {p1, v0, v1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    return-object p1
.end method

.method public onDestroyView()V
    .locals 2

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroyView()V

    iget-object v0, p0, L㚬/㧦/㺴/㺴;->mDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    iput-boolean v1, p0, L㚬/㧦/㺴/㺴;->mViewDestroyed:Z

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    iget-object v0, p0, L㚬/㧦/㺴/㺴;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    iget-boolean v0, p0, L㚬/㧦/㺴/㺴;->mDismissed:Z

    if-nez v0, :cond_0

    iget-object v0, p0, L㚬/㧦/㺴/㺴;->mDialog:Landroid/app/Dialog;

    invoke-virtual {p0, v0}, L㚬/㧦/㺴/㺴;->onDismiss(Landroid/content/DialogInterface;)V

    :cond_0
    iput-object v1, p0, L㚬/㧦/㺴/㺴;->mDialog:Landroid/app/Dialog;

    const/4 v0, 0x0

    iput-boolean v0, p0, L㚬/㧦/㺴/㺴;->mDialogCreated:Z

    :cond_1
    return-void
.end method

.method public onDetach()V
    .locals 2

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDetach()V

    iget-boolean v0, p0, L㚬/㧦/㺴/㺴;->mShownByMe:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, L㚬/㧦/㺴/㺴;->mDismissed:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, L㚬/㧦/㺴/㺴;->mDismissed:Z

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwnerLiveData()Landroidx/lifecycle/LiveData;

    move-result-object v0

    iget-object v1, p0, L㚬/㧦/㺴/㺴;->mObserver:L㚬/ἥ/ཇ;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/LiveData;->ㄏ(L㚬/ἥ/ཇ;)V

    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    iget-boolean p1, p0, L㚬/㧦/㺴/㺴;->mViewDestroyed:Z

    if-nez p1, :cond_1

    const/4 p1, 0x3

    invoke-static {p1}, L㚬/㧦/㺴/ἥ;->ፖ(I)Z

    move-result p1

    if-eqz p1, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onDismiss called for DialogFragment "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "FragmentManager"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 p1, 0x1

    invoke-direct {p0, p1, p1}, L㚬/㧦/㺴/㺴;->dismissInternal(ZZ)V

    :cond_1
    return-void
.end method

.method public onFindViewById(I)Landroid/view/View;
    .locals 1

    iget-object v0, p0, L㚬/㧦/㺴/㺴;->mDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public onGetLayoutInflater(Landroid/os/Bundle;)Landroid/view/LayoutInflater;
    .locals 4

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onGetLayoutInflater(Landroid/os/Bundle;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget-boolean v1, p0, L㚬/㧦/㺴/㺴;->mShowsDialog:Z

    const/4 v2, 0x2

    const-string v3, "FragmentManager"

    if-eqz v1, :cond_3

    iget-boolean v1, p0, L㚬/㧦/㺴/㺴;->mCreatingDialog:Z

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1}, L㚬/㧦/㺴/㺴;->prepareDialog(Landroid/os/Bundle;)V

    invoke-static {v2}, L㚬/㧦/㺴/ἥ;->ፖ(I)Z

    move-result p1

    if-eqz p1, :cond_1

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "get layout inflater for DialogFragment "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " from dialog context"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object p1, p0, L㚬/㧦/㺴/㺴;->mDialog:Landroid/app/Dialog;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/view/LayoutInflater;->cloneInContext(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    :cond_2
    return-object v0

    :cond_3
    :goto_0
    invoke-static {v2}, L㚬/㧦/㺴/ἥ;->ፖ(I)Z

    move-result p1

    if-eqz p1, :cond_5

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getting layout inflater for DialogFragment "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-boolean v1, p0, L㚬/㧦/㺴/㺴;->mShowsDialog:Z

    if-nez v1, :cond_4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mShowsDialog = false: "

    goto :goto_1

    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mCreatingDialog = true: "

    :goto_1
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    return-object v0
.end method

.method public onHasView()Z
    .locals 1

    iget-boolean v0, p0, L㚬/㧦/㺴/㺴;->mDialogCreated:Z

    return v0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    iget-object v0, p0, L㚬/㧦/㺴/㺴;->mDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->onSaveInstanceState()Landroid/os/Bundle;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "android:dialogShowing"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v1, "android:savedDialogState"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_0
    iget v0, p0, L㚬/㧦/㺴/㺴;->mStyle:I

    if-eqz v0, :cond_1

    const-string v1, "android:style"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_1
    iget v0, p0, L㚬/㧦/㺴/㺴;->mTheme:I

    if-eqz v0, :cond_2

    const-string v1, "android:theme"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_2
    iget-boolean v0, p0, L㚬/㧦/㺴/㺴;->mCancelable:Z

    if-nez v0, :cond_3

    const-string v1, "android:cancelable"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_3
    iget-boolean v0, p0, L㚬/㧦/㺴/㺴;->mShowsDialog:Z

    if-nez v0, :cond_4

    const-string v1, "android:showsDialog"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_4
    iget v0, p0, L㚬/㧦/㺴/㺴;->mBackStackId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_5

    const-string v1, "android:backStackId"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_5
    return-void
.end method

.method public onStart()V
    .locals 2

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onStart()V

    iget-object v0, p0, L㚬/㧦/㺴/㺴;->mDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    iput-boolean v1, p0, L㚬/㧦/㺴/㺴;->mViewDestroyed:Z

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 1

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onStop()V

    iget-object v0, p0, L㚬/㧦/㺴/㺴;->mDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->hide()V

    :cond_0
    return-void
.end method

.method public onViewStateRestored(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onViewStateRestored(Landroid/os/Bundle;)V

    iget-object v0, p0, L㚬/㧦/㺴/㺴;->mDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    const-string v0, "android:savedDialogState"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object v0, p0, L㚬/㧦/㺴/㺴;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0, p1}, Landroid/app/Dialog;->onRestoreInstanceState(Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method public performCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->performCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)V

    iget-object p1, p0, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    if-nez p1, :cond_0

    iget-object p1, p0, L㚬/㧦/㺴/㺴;->mDialog:Landroid/app/Dialog;

    if-eqz p1, :cond_0

    if-eqz p3, :cond_0

    const-string p1, "android:savedDialogState"

    invoke-virtual {p3, p1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p2, p0, L㚬/㧦/㺴/㺴;->mDialog:Landroid/app/Dialog;

    invoke-virtual {p2, p1}, Landroid/app/Dialog;->onRestoreInstanceState(Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method public final requireDialog()Landroid/app/Dialog;
    .locals 3

    invoke-virtual {p0}, L㚬/㧦/㺴/㺴;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DialogFragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " does not have a Dialog."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setCancelable(Z)V
    .locals 1

    iput-boolean p1, p0, L㚬/㧦/㺴/㺴;->mCancelable:Z

    iget-object v0, p0, L㚬/㧦/㺴/㺴;->mDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/app/Dialog;->setCancelable(Z)V

    :cond_0
    return-void
.end method

.method public setShowsDialog(Z)V
    .locals 0

    iput-boolean p1, p0, L㚬/㧦/㺴/㺴;->mShowsDialog:Z

    return-void
.end method

.method public setStyle(II)V
    .locals 3

    const/4 v0, 0x2

    invoke-static {v0}, L㚬/㧦/㺴/ἥ;->ፖ(I)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Setting style and theme for DialogFragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "FragmentManager"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iput p1, p0, L㚬/㧦/㺴/㺴;->mStyle:I

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_2

    :cond_1
    const p1, 0x1030059

    iput p1, p0, L㚬/㧦/㺴/㺴;->mTheme:I

    :cond_2
    if-eqz p2, :cond_3

    iput p2, p0, L㚬/㧦/㺴/㺴;->mTheme:I

    :cond_3
    return-void
.end method

.method public setupDialog(Landroid/app/Dialog;I)V
    .locals 2

    const/4 v0, 0x1

    if-eq p2, v0, :cond_1

    const/4 v1, 0x2

    if-eq p2, v1, :cond_1

    const/4 v1, 0x3

    if-eq p2, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p2

    if-eqz p2, :cond_1

    const/16 v1, 0x18

    invoke-virtual {p2, v1}, Landroid/view/Window;->addFlags(I)V

    :cond_1
    invoke-virtual {p1, v0}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    :goto_0
    return-void
.end method

.method public show(L㚬/㧦/㺴/㢏;Ljava/lang/String;)I
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, L㚬/㧦/㺴/㺴;->mDismissed:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, L㚬/㧦/㺴/㺴;->mShownByMe:Z

    invoke-virtual {p1, p0, p2}, L㚬/㧦/㺴/㢏;->㺴(Landroidx/fragment/app/Fragment;Ljava/lang/String;)L㚬/㧦/㺴/㢏;

    iput-boolean v0, p0, L㚬/㧦/㺴/㺴;->mViewDestroyed:Z

    invoke-virtual {p1}, L㚬/㧦/㺴/㢏;->䆀()I

    move-result p1

    iput p1, p0, L㚬/㧦/㺴/㺴;->mBackStackId:I

    return p1
.end method

.method public show(L㚬/㧦/㺴/ἥ;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, L㚬/㧦/㺴/㺴;->mDismissed:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, L㚬/㧦/㺴/㺴;->mShownByMe:Z

    invoke-virtual {p1}, L㚬/㧦/㺴/ἥ;->ἥ()L㚬/㧦/㺴/㢏;

    move-result-object p1

    invoke-virtual {p1, p0, p2}, L㚬/㧦/㺴/㢏;->㺴(Landroidx/fragment/app/Fragment;Ljava/lang/String;)L㚬/㧦/㺴/㢏;

    invoke-virtual {p1}, L㚬/㧦/㺴/㢏;->䆀()I

    return-void
.end method

.method public showNow(L㚬/㧦/㺴/ἥ;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, L㚬/㧦/㺴/㺴;->mDismissed:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, L㚬/㧦/㺴/㺴;->mShownByMe:Z

    invoke-virtual {p1}, L㚬/㧦/㺴/ἥ;->ἥ()L㚬/㧦/㺴/㢏;

    move-result-object p1

    invoke-virtual {p1, p0, p2}, L㚬/㧦/㺴/㢏;->㺴(Landroidx/fragment/app/Fragment;Ljava/lang/String;)L㚬/㧦/㺴/㢏;

    invoke-virtual {p1}, L㚬/㧦/㺴/㢏;->ℓ()V

    return-void
.end method
