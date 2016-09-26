.class final Landroid/view/ViewRootImpl$ViewRootHandler;
.super Landroid/os/Handler;
.source "ViewRootImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/ViewRootImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "ViewRootHandler"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/view/ViewRootImpl;


# direct methods
.method constructor <init>(Landroid/view/ViewRootImpl;)V
    .locals 0
    .param p1, "this$0"    # Landroid/view/ViewRootImpl;

    .prologue
    .line 3199
    iput-object p1, p0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public getMessageName(Landroid/os/Message;)Ljava/lang/String;
    .locals 1
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    .line 3202
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 3252
    :pswitch_0
    invoke-super {p0, p1}, Landroid/os/Handler;->getMessageName(Landroid/os/Message;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 3204
    :pswitch_1
    const-string/jumbo v0, "MSG_INVALIDATE"

    return-object v0

    .line 3206
    :pswitch_2
    const-string/jumbo v0, "MSG_INVALIDATE_RECT"

    return-object v0

    .line 3208
    :pswitch_3
    const-string/jumbo v0, "MSG_DIE"

    return-object v0

    .line 3210
    :pswitch_4
    const-string/jumbo v0, "MSG_RESIZED"

    return-object v0

    .line 3212
    :pswitch_5
    const-string/jumbo v0, "MSG_RESIZED_REPORT"

    return-object v0

    .line 3214
    :pswitch_6
    const-string/jumbo v0, "MSG_WINDOW_FOCUS_CHANGED"

    return-object v0

    .line 3216
    :pswitch_7
    const-string/jumbo v0, "MSG_DISPATCH_INPUT_EVENT"

    return-object v0

    .line 3218
    :pswitch_8
    const-string/jumbo v0, "MSG_DISPATCH_APP_VISIBILITY"

    return-object v0

    .line 3220
    :pswitch_9
    const-string/jumbo v0, "MSG_DISPATCH_GET_NEW_SURFACE"

    return-object v0

    .line 3222
    :pswitch_a
    const-string/jumbo v0, "MSG_DISPATCH_KEY_FROM_IME"

    return-object v0

    .line 3224
    :pswitch_b
    const-string/jumbo v0, "MSG_FINISH_INPUT_CONNECTION"

    return-object v0

    .line 3226
    :pswitch_c
    const-string/jumbo v0, "MSG_CHECK_FOCUS"

    return-object v0

    .line 3228
    :pswitch_d
    const-string/jumbo v0, "MSG_CLOSE_SYSTEM_DIALOGS"

    return-object v0

    .line 3230
    :pswitch_e
    const-string/jumbo v0, "MSG_DISPATCH_DRAG_EVENT"

    return-object v0

    .line 3232
    :pswitch_f
    const-string/jumbo v0, "MSG_DISPATCH_DRAG_LOCATION_EVENT"

    return-object v0

    .line 3234
    :pswitch_10
    const-string/jumbo v0, "MSG_DISPATCH_SYSTEM_UI_VISIBILITY"

    return-object v0

    .line 3236
    :pswitch_11
    const-string/jumbo v0, "MSG_UPDATE_CONFIGURATION"

    return-object v0

    .line 3238
    :pswitch_12
    const-string/jumbo v0, "MSG_PROCESS_INPUT_EVENTS"

    return-object v0

    .line 3240
    :pswitch_13
    const-string/jumbo v0, "MSG_CLEAR_ACCESSIBILITY_FOCUS_HOST"

    return-object v0

    .line 3242
    :pswitch_14
    const-string/jumbo v0, "MSG_DISPATCH_WINDOW_ANIMATION_STARTED"

    return-object v0

    .line 3244
    :pswitch_15
    const-string/jumbo v0, "MSG_DISPATCH_WINDOW_ANIMATION_STOPPED"

    return-object v0

    .line 3246
    :pswitch_16
    const-string/jumbo v0, "MSG_WINDOW_MOVED"

    return-object v0

    .line 3248
    :pswitch_17
    const-string/jumbo v0, "MSG_SYNTHESIZE_INPUT_EVENT"

    return-object v0

    .line 3250
    :pswitch_18
    const-string/jumbo v0, "MSG_DISPATCH_WINDOW_SHOWN"

    return-object v0

    .line 3202
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_0
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_0
        :pswitch_13
        :pswitch_0
        :pswitch_16
        :pswitch_17
        :pswitch_18
        :pswitch_15
        :pswitch_14
    .end packed-switch
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 31
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 3257
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 3256
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 3259
    :pswitch_1
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->invalidate()V

    goto :goto_0

    .line 3262
    :pswitch_2
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v24, v0

    check-cast v24, Landroid/view/View$AttachInfo$InvalidateInfo;

    .line 3263
    .local v24, "info":Landroid/view/View$AttachInfo$InvalidateInfo;
    move-object/from16 v0, v24

    iget-object v2, v0, Landroid/view/View$AttachInfo$InvalidateInfo;->target:Landroid/view/View;

    move-object/from16 v0, v24

    iget v3, v0, Landroid/view/View$AttachInfo$InvalidateInfo;->left:I

    move-object/from16 v0, v24

    iget v4, v0, Landroid/view/View$AttachInfo$InvalidateInfo;->top:I

    move-object/from16 v0, v24

    iget v5, v0, Landroid/view/View$AttachInfo$InvalidateInfo;->right:I

    move-object/from16 v0, v24

    iget v6, v0, Landroid/view/View$AttachInfo$InvalidateInfo;->bottom:I

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/view/View;->invalidate(IIII)V

    .line 3264
    invoke-virtual/range {v24 .. v24}, Landroid/view/View$AttachInfo$InvalidateInfo;->recycle()V

    goto :goto_0

    .line 3267
    .end local v24    # "info":Landroid/view/View$AttachInfo$InvalidateInfo;
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    const/4 v3, 0x0

    iput-boolean v3, v2, Landroid/view/ViewRootImpl;->mProcessInputEventsScheduled:Z

    .line 3268
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    invoke-virtual {v2}, Landroid/view/ViewRootImpl;->doProcessInputEvents()V

    goto :goto_0

    .line 3271
    :pswitch_4
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->arg1:I

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    :goto_1
    invoke-virtual {v3, v2}, Landroid/view/ViewRootImpl;->handleAppVisibility(Z)V

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    goto :goto_1

    .line 3274
    :pswitch_5
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    invoke-virtual {v2}, Landroid/view/ViewRootImpl;->handleGetNewSurface()V

    goto :goto_0

    .line 3278
    :pswitch_6
    move-object/from16 v0, p1

    iget-object v14, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v14, Lcom/android/internal/os/SomeArgs;

    .line 3279
    .local v14, "args":Lcom/android/internal/os/SomeArgs;
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v2, v2, Landroid/view/ViewRootImpl;->mWinFrame:Landroid/graphics/Rect;

    iget-object v3, v14, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 3280
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v2, v2, Landroid/view/ViewRootImpl;->mPendingOverscanInsets:Landroid/graphics/Rect;

    iget-object v3, v14, Lcom/android/internal/os/SomeArgs;->arg5:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 3279
    if-eqz v2, :cond_2

    .line 3281
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v2, v2, Landroid/view/ViewRootImpl;->mPendingContentInsets:Landroid/graphics/Rect;

    iget-object v3, v14, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 3279
    if-eqz v2, :cond_2

    .line 3282
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v2, v2, Landroid/view/ViewRootImpl;->mPendingStableInsets:Landroid/graphics/Rect;

    iget-object v3, v14, Lcom/android/internal/os/SomeArgs;->arg6:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 3279
    if-eqz v2, :cond_2

    .line 3283
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v2, v2, Landroid/view/ViewRootImpl;->mPendingVisibleInsets:Landroid/graphics/Rect;

    iget-object v3, v14, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 3279
    if-eqz v2, :cond_2

    .line 3284
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v2, v2, Landroid/view/ViewRootImpl;->mPendingOutsets:Landroid/graphics/Rect;

    iget-object v3, v14, Lcom/android/internal/os/SomeArgs;->arg7:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 3279
    if-eqz v2, :cond_2

    .line 3285
    iget-object v2, v14, Lcom/android/internal/os/SomeArgs;->arg4:Ljava/lang/Object;

    if-eqz v2, :cond_0

    .line 3290
    .end local v14    # "args":Lcom/android/internal/os/SomeArgs;
    :cond_2
    :pswitch_7
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-boolean v2, v2, Landroid/view/ViewRootImpl;->mAdded:Z

    if-eqz v2, :cond_0

    .line 3291
    move-object/from16 v0, p1

    iget-object v14, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v14, Lcom/android/internal/os/SomeArgs;

    .line 3293
    .restart local v14    # "args":Lcom/android/internal/os/SomeArgs;
    iget-object v15, v14, Lcom/android/internal/os/SomeArgs;->arg4:Ljava/lang/Object;

    check-cast v15, Landroid/content/res/Configuration;

    .line 3294
    .local v15, "config":Landroid/content/res/Configuration;
    if-eqz v15, :cond_3

    .line 3295
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    const/4 v3, 0x0

    invoke-virtual {v2, v15, v3}, Landroid/view/ViewRootImpl;->updateConfiguration(Landroid/content/res/Configuration;Z)V

    .line 3298
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v3, v2, Landroid/view/ViewRootImpl;->mWinFrame:Landroid/graphics/Rect;

    iget-object v2, v14, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v2, Landroid/graphics/Rect;

    invoke-virtual {v3, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 3299
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v3, v2, Landroid/view/ViewRootImpl;->mPendingOverscanInsets:Landroid/graphics/Rect;

    iget-object v2, v14, Lcom/android/internal/os/SomeArgs;->arg5:Ljava/lang/Object;

    check-cast v2, Landroid/graphics/Rect;

    invoke-virtual {v3, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 3300
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v3, v2, Landroid/view/ViewRootImpl;->mPendingContentInsets:Landroid/graphics/Rect;

    iget-object v2, v14, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v2, Landroid/graphics/Rect;

    invoke-virtual {v3, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 3301
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v3, v2, Landroid/view/ViewRootImpl;->mPendingStableInsets:Landroid/graphics/Rect;

    iget-object v2, v14, Lcom/android/internal/os/SomeArgs;->arg6:Ljava/lang/Object;

    check-cast v2, Landroid/graphics/Rect;

    invoke-virtual {v3, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 3302
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v3, v2, Landroid/view/ViewRootImpl;->mPendingVisibleInsets:Landroid/graphics/Rect;

    iget-object v2, v14, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    check-cast v2, Landroid/graphics/Rect;

    invoke-virtual {v3, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 3303
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v3, v2, Landroid/view/ViewRootImpl;->mPendingOutsets:Landroid/graphics/Rect;

    iget-object v2, v14, Lcom/android/internal/os/SomeArgs;->arg7:Ljava/lang/Object;

    check-cast v2, Landroid/graphics/Rect;

    invoke-virtual {v3, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 3305
    invoke-virtual {v14}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 3307
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->what:I

    const/4 v3, 0x5

    if-ne v2, v3, :cond_4

    .line 3308
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    const/4 v3, 0x1

    iput-boolean v3, v2, Landroid/view/ViewRootImpl;->mReportNextDraw:Z

    .line 3311
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v2, v2, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-eqz v2, :cond_5

    .line 3312
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v2, v2, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-static {v2}, Landroid/view/ViewRootImpl;->-wrap5(Landroid/view/View;)V

    .line 3315
    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    invoke-virtual {v2}, Landroid/view/ViewRootImpl;->requestLayout()V

    goto/16 :goto_0

    .line 3319
    .end local v14    # "args":Lcom/android/internal/os/SomeArgs;
    .end local v15    # "config":Landroid/content/res/Configuration;
    :pswitch_8
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-boolean v2, v2, Landroid/view/ViewRootImpl;->mAdded:Z

    if-eqz v2, :cond_0

    .line 3320
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v2, v2, Landroid/view/ViewRootImpl;->mWinFrame:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v30

    .line 3321
    .local v30, "w":I
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v2, v2, Landroid/view/ViewRootImpl;->mWinFrame:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v21

    .line 3322
    .local v21, "h":I
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v25, v0

    .line 3323
    .local v25, "l":I
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v29, v0

    .line 3324
    .local v29, "t":I
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v2, v2, Landroid/view/ViewRootImpl;->mWinFrame:Landroid/graphics/Rect;

    move/from16 v0, v25

    iput v0, v2, Landroid/graphics/Rect;->left:I

    .line 3325
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v2, v2, Landroid/view/ViewRootImpl;->mWinFrame:Landroid/graphics/Rect;

    add-int v3, v25, v30

    iput v3, v2, Landroid/graphics/Rect;->right:I

    .line 3326
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v2, v2, Landroid/view/ViewRootImpl;->mWinFrame:Landroid/graphics/Rect;

    move/from16 v0, v29

    iput v0, v2, Landroid/graphics/Rect;->top:I

    .line 3327
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v2, v2, Landroid/view/ViewRootImpl;->mWinFrame:Landroid/graphics/Rect;

    add-int v3, v29, v21

    iput v3, v2, Landroid/graphics/Rect;->bottom:I

    .line 3329
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v2, v2, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-eqz v2, :cond_6

    .line 3330
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v2, v2, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-static {v2}, Landroid/view/ViewRootImpl;->-wrap5(Landroid/view/View;)V

    .line 3332
    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    invoke-virtual {v2}, Landroid/view/ViewRootImpl;->requestLayout()V

    goto/16 :goto_0

    .line 3336
    .end local v21    # "h":I
    .end local v25    # "l":I
    .end local v29    # "t":I
    .end local v30    # "w":I
    :pswitch_9
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-boolean v2, v2, Landroid/view/ViewRootImpl;->mAdded:Z

    if-eqz v2, :cond_0

    .line 3337
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->arg1:I

    if-eqz v2, :cond_c

    const/16 v22, 0x1

    .line 3338
    .local v22, "hasWindowFocus":Z
    :goto_2
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v2, v2, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    move/from16 v0, v22

    iput-boolean v0, v2, Landroid/view/View$AttachInfo;->mHasWindowFocus:Z

    .line 3340
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    move/from16 v0, v22

    invoke-static {v2, v0}, Landroid/view/ViewRootImpl;->-wrap7(Landroid/view/ViewRootImpl;Z)V

    .line 3342
    if-eqz v22, :cond_7

    .line 3343
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->arg2:I

    if-eqz v2, :cond_d

    const/16 v23, 0x1

    .line 3344
    .local v23, "inTouchMode":Z
    :goto_3
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    move/from16 v0, v23

    invoke-static {v2, v0}, Landroid/view/ViewRootImpl;->-wrap2(Landroid/view/ViewRootImpl;Z)Z

    .line 3346
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v2, v2, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v2, v2, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/HardwareRenderer;

    if-eqz v2, :cond_7

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v2, v2, Landroid/view/ViewRootImpl;->mSurface:Landroid/view/Surface;

    invoke-virtual {v2}, Landroid/view/Surface;->isValid()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 3347
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    const/4 v3, 0x1

    iput-boolean v3, v2, Landroid/view/ViewRootImpl;->mFullRedrawNeeded:Z

    .line 3349
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v0, v2, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v26, v0

    .line 3350
    .local v26, "lp":Landroid/view/WindowManager$LayoutParams;
    if-eqz v26, :cond_e

    move-object/from16 v0, v26

    iget-object v7, v0, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    .line 3351
    :goto_4
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v2, v2, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v2, v2, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/HardwareRenderer;

    .line 3352
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget v3, v3, Landroid/view/ViewRootImpl;->mWidth:I

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget v4, v4, Landroid/view/ViewRootImpl;->mHeight:I

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v5, v5, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v6, v6, Landroid/view/ViewRootImpl;->mSurface:Landroid/view/Surface;

    .line 3351
    invoke-virtual/range {v2 .. v7}, Landroid/view/HardwareRenderer;->initializeIfNeeded(IILandroid/view/View$AttachInfo;Landroid/view/Surface;Landroid/graphics/Rect;)Z
    :try_end_0
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3369
    .end local v23    # "inTouchMode":Z
    .end local v26    # "lp":Landroid/view/WindowManager$LayoutParams;
    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    .line 3370
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v3, v3, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 3369
    invoke-static {v3}, Landroid/view/WindowManager$LayoutParams;->mayUseInputMethod(I)Z

    move-result v3

    iput-boolean v3, v2, Landroid/view/ViewRootImpl;->mLastWasImTarget:Z

    .line 3372
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v8

    .line 3373
    .local v8, "imm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v8, :cond_8

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-boolean v2, v2, Landroid/view/ViewRootImpl;->mLastWasImTarget:Z

    if-eqz v2, :cond_8

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v2}, Landroid/view/ViewRootImpl;->-wrap3(Landroid/view/ViewRootImpl;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 3376
    :cond_8
    :goto_5
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v2, v2, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-eqz v2, :cond_9

    .line 3377
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v2, v2, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v2, v2, Landroid/view/View$AttachInfo;->mKeyDispatchState:Landroid/view/KeyEvent$DispatcherState;

    invoke-virtual {v2}, Landroid/view/KeyEvent$DispatcherState;->reset()V

    .line 3378
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v2, v2, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    move/from16 v0, v22

    invoke-virtual {v2, v0}, Landroid/view/View;->dispatchWindowFocusChanged(Z)V

    .line 3379
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v2, v2, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v2, v2, Landroid/view/View$AttachInfo;->mTreeObserver:Landroid/view/ViewTreeObserver;

    move/from16 v0, v22

    invoke-virtual {v2, v0}, Landroid/view/ViewTreeObserver;->dispatchOnWindowFocusChange(Z)V

    .line 3384
    :cond_9
    if-eqz v22, :cond_b

    .line 3385
    if-eqz v8, :cond_a

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-boolean v2, v2, Landroid/view/ViewRootImpl;->mLastWasImTarget:Z

    if-eqz v2, :cond_a

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v2}, Landroid/view/ViewRootImpl;->-wrap3(Landroid/view/ViewRootImpl;)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 3392
    :cond_a
    :goto_6
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v2, v2, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v3, v2, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    and-int/lit16 v3, v3, -0x101

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    .line 3394
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v2, v2, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager$LayoutParams;

    iget v3, v2, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    and-int/lit16 v3, v3, -0x101

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    .line 3397
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    const/4 v3, 0x1

    iput-boolean v3, v2, Landroid/view/ViewRootImpl;->mHasHadWindowFocus:Z

    .line 3400
    :cond_b
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v2, v2, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v2, v2, Landroid/view/ViewRootImpl;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3401
    if-eqz v22, :cond_0

    .line 3402
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v2, v2, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    .line 3403
    const/16 v3, 0x20

    .line 3402
    invoke-virtual {v2, v3}, Landroid/view/View;->sendAccessibilityEvent(I)V

    goto/16 :goto_0

    .line 3337
    .end local v8    # "imm":Landroid/view/inputmethod/InputMethodManager;
    .end local v22    # "hasWindowFocus":Z
    :cond_c
    const/16 v22, 0x0

    .restart local v22    # "hasWindowFocus":Z
    goto/16 :goto_2

    .line 3343
    :cond_d
    const/16 v23, 0x0

    .restart local v23    # "inTouchMode":Z
    goto/16 :goto_3

    .line 3350
    .restart local v26    # "lp":Landroid/view/WindowManager$LayoutParams;
    :cond_e
    const/4 v7, 0x0

    .local v7, "surfaceInsets":Landroid/graphics/Rect;
    goto/16 :goto_4

    .line 3353
    .end local v7    # "surfaceInsets":Landroid/graphics/Rect;
    .end local v26    # "lp":Landroid/view/WindowManager$LayoutParams;
    :catch_0
    move-exception v16

    .line 3354
    .local v16, "e":Landroid/view/Surface$OutOfResourcesException;
    const-string/jumbo v2, "ViewRootImpl"

    const-string/jumbo v3, "OutOfResourcesException locking surface"

    move-object/from16 v0, v16

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3356
    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v2, v2, Landroid/view/ViewRootImpl;->mWindowSession:Landroid/view/IWindowSession;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v3, v3, Landroid/view/ViewRootImpl;->mWindow:Landroid/view/ViewRootImpl$W;

    invoke-interface {v2, v3}, Landroid/view/IWindowSession;->outOfMemory(Landroid/view/IWindow;)Z

    move-result v2

    if-nez v2, :cond_f

    .line 3357
    const-string/jumbo v2, "ViewRootImpl"

    const-string/jumbo v3, "No processes killed for memory; killing self"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3358
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    invoke-static {v2}, Landroid/os/Process;->killProcess(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 3363
    :cond_f
    :goto_7
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->what:I

    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg2:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3, v4}, Landroid/view/ViewRootImpl$ViewRootHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    const-wide/16 v4, 0x1f4

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v4, v5}, Landroid/view/ViewRootImpl$ViewRootHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 3364
    return-void

    .line 3374
    .end local v16    # "e":Landroid/view/Surface$OutOfResourcesException;
    .end local v23    # "inTouchMode":Z
    .restart local v8    # "imm":Landroid/view/inputmethod/InputMethodManager;
    :cond_10
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v2, v2, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    move/from16 v0, v22

    invoke-virtual {v8, v2, v0}, Landroid/view/inputmethod/InputMethodManager;->onPreWindowFocus(Landroid/view/View;Z)V

    goto/16 :goto_5

    .line 3386
    :cond_11
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v9, v2, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v2, v2, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v10

    .line 3387
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v2, v2, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v11, v2, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    .line 3388
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-boolean v2, v2, Landroid/view/ViewRootImpl;->mHasHadWindowFocus:Z

    if-eqz v2, :cond_12

    const/4 v12, 0x0

    :goto_8
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v2, v2, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v13, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 3386
    invoke-virtual/range {v8 .. v13}, Landroid/view/inputmethod/InputMethodManager;->onPostWindowFocus(Landroid/view/View;Landroid/view/View;IZI)V

    goto/16 :goto_6

    .line 3388
    :cond_12
    const/4 v12, 0x1

    goto :goto_8

    .line 3409
    .end local v8    # "imm":Landroid/view/inputmethod/InputMethodManager;
    .end local v22    # "hasWindowFocus":Z
    :pswitch_a
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    invoke-virtual {v2}, Landroid/view/ViewRootImpl;->doDie()V

    goto/16 :goto_0

    .line 3412
    :pswitch_b
    move-object/from16 v0, p1

    iget-object v14, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v14, Lcom/android/internal/os/SomeArgs;

    .line 3413
    .restart local v14    # "args":Lcom/android/internal/os/SomeArgs;
    iget-object v0, v14, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    move-object/from16 v18, v0

    check-cast v18, Landroid/view/InputEvent;

    .line 3414
    .local v18, "event":Landroid/view/InputEvent;
    iget-object v0, v14, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    move-object/from16 v27, v0

    check-cast v27, Landroid/view/InputEventReceiver;

    .line 3415
    .local v27, "receiver":Landroid/view/InputEventReceiver;
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    const/4 v3, 0x0

    const/4 v4, 0x1

    move-object/from16 v0, v18

    move-object/from16 v1, v27

    invoke-virtual {v2, v0, v1, v3, v4}, Landroid/view/ViewRootImpl;->enqueueInputEvent(Landroid/view/InputEvent;Landroid/view/InputEventReceiver;IZ)V

    .line 3416
    invoke-virtual {v14}, Lcom/android/internal/os/SomeArgs;->recycle()V

    goto/16 :goto_0

    .line 3419
    .end local v14    # "args":Lcom/android/internal/os/SomeArgs;
    .end local v18    # "event":Landroid/view/InputEvent;
    .end local v27    # "receiver":Landroid/view/InputEventReceiver;
    :pswitch_c
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v18, v0

    check-cast v18, Landroid/view/InputEvent;

    .line 3420
    .restart local v18    # "event":Landroid/view/InputEvent;
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    const/4 v3, 0x0

    const/16 v4, 0x20

    const/4 v5, 0x1

    move-object/from16 v0, v18

    invoke-virtual {v2, v0, v3, v4, v5}, Landroid/view/ViewRootImpl;->enqueueInputEvent(Landroid/view/InputEvent;Landroid/view/InputEventReceiver;IZ)V

    goto/16 :goto_0

    .line 3426
    .end local v18    # "event":Landroid/view/InputEvent;
    :pswitch_d
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v19, v0

    check-cast v19, Landroid/view/KeyEvent;

    .line 3427
    .local v19, "event":Landroid/view/KeyEvent;
    invoke-virtual/range {v19 .. v19}, Landroid/view/KeyEvent;->getFlags()I

    move-result v2

    and-int/lit8 v2, v2, 0x8

    if-eqz v2, :cond_13

    .line 3431
    invoke-virtual/range {v19 .. v19}, Landroid/view/KeyEvent;->getFlags()I

    move-result v2

    and-int/lit8 v2, v2, -0x9

    move-object/from16 v0, v19

    invoke-static {v0, v2}, Landroid/view/KeyEvent;->changeFlags(Landroid/view/KeyEvent;I)Landroid/view/KeyEvent;

    move-result-object v19

    .line 3434
    :cond_13
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x1

    move-object/from16 v0, v19

    invoke-virtual {v2, v0, v3, v4, v5}, Landroid/view/ViewRootImpl;->enqueueInputEvent(Landroid/view/InputEvent;Landroid/view/InputEventReceiver;IZ)V

    goto/16 :goto_0

    .line 3437
    .end local v19    # "event":Landroid/view/KeyEvent;
    :pswitch_e
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v8

    .line 3438
    .restart local v8    # "imm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v8, :cond_0

    .line 3439
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/view/inputmethod/InputConnection;

    invoke-virtual {v8, v2}, Landroid/view/inputmethod/InputMethodManager;->reportFinishInputConnection(Landroid/view/inputmethod/InputConnection;)V

    goto/16 :goto_0

    .line 3443
    .end local v8    # "imm":Landroid/view/inputmethod/InputMethodManager;
    :pswitch_f
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v8

    .line 3444
    .restart local v8    # "imm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v8, :cond_0

    .line 3445
    invoke-virtual {v8}, Landroid/view/inputmethod/InputMethodManager;->checkFocus()V

    goto/16 :goto_0

    .line 3449
    .end local v8    # "imm":Landroid/view/inputmethod/InputMethodManager;
    :pswitch_10
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v2, v2, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-eqz v2, :cond_0

    .line 3450
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v3, v2, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, v2}, Landroid/view/View;->onCloseSystemDialogs(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 3455
    :pswitch_11
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v17, v0

    check-cast v17, Landroid/view/DragEvent;

    .line 3456
    .local v17, "event":Landroid/view/DragEvent;
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v2, v2, Landroid/view/ViewRootImpl;->mLocalDragState:Ljava/lang/Object;

    move-object/from16 v0, v17

    iput-object v2, v0, Landroid/view/DragEvent;->mLocalState:Ljava/lang/Object;

    .line 3457
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    move-object/from16 v0, v17

    invoke-static {v2, v0}, Landroid/view/ViewRootImpl;->-wrap6(Landroid/view/ViewRootImpl;Landroid/view/DragEvent;)V

    goto/16 :goto_0

    .line 3460
    .end local v17    # "event":Landroid/view/DragEvent;
    :pswitch_12
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/view/ViewRootImpl$SystemUiVisibilityInfo;

    invoke-virtual {v3, v2}, Landroid/view/ViewRootImpl;->handleDispatchSystemUiVisibilityChanged(Landroid/view/ViewRootImpl$SystemUiVisibilityInfo;)V

    goto/16 :goto_0

    .line 3463
    :pswitch_13
    move-object/from16 v0, p1

    iget-object v15, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v15, Landroid/content/res/Configuration;

    .line 3464
    .restart local v15    # "config":Landroid/content/res/Configuration;
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v2, v2, Landroid/view/ViewRootImpl;->mLastConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v15, v2}, Landroid/content/res/Configuration;->isOtherSeqNewer(Landroid/content/res/Configuration;)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 3465
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v15, v2, Landroid/view/ViewRootImpl;->mLastConfiguration:Landroid/content/res/Configuration;

    .line 3467
    :cond_14
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    const/4 v3, 0x0

    invoke-virtual {v2, v15, v3}, Landroid/view/ViewRootImpl;->updateConfiguration(Landroid/content/res/Configuration;Z)V

    goto/16 :goto_0

    .line 3470
    .end local v15    # "config":Landroid/content/res/Configuration;
    :pswitch_14
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/ViewRootImpl;->setAccessibilityFocus(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V

    goto/16 :goto_0

    .line 3473
    :pswitch_15
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v28, v0

    .line 3474
    .local v28, "remainingFrameCount":I
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    move/from16 v0, v28

    invoke-virtual {v2, v0}, Landroid/view/ViewRootImpl;->handleDispatchWindowAnimationStarted(I)V

    goto/16 :goto_0

    .line 3477
    .end local v28    # "remainingFrameCount":I
    :pswitch_16
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    invoke-virtual {v2}, Landroid/view/ViewRootImpl;->handleDispatchWindowAnimationStopped()V

    goto/16 :goto_0

    .line 3480
    :pswitch_17
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v2, v2, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-eqz v2, :cond_0

    .line 3481
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v3, v3, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/ViewRootImpl;->invalidateWorld(Landroid/view/View;)V

    goto/16 :goto_0

    .line 3485
    :pswitch_18
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    invoke-virtual {v2}, Landroid/view/ViewRootImpl;->handleDispatchWindowShown()V

    goto/16 :goto_0

    .line 3360
    .restart local v16    # "e":Landroid/view/Surface$OutOfResourcesException;
    .restart local v22    # "hasWindowFocus":Z
    .restart local v23    # "inTouchMode":Z
    :catch_1
    move-exception v20

    .local v20, "ex":Landroid/os/RemoteException;
    goto/16 :goto_7

    .line 3257
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_a
        :pswitch_6
        :pswitch_7
        :pswitch_9
        :pswitch_b
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_3
        :pswitch_0
        :pswitch_14
        :pswitch_17
        :pswitch_8
        :pswitch_c
        :pswitch_18
        :pswitch_16
        :pswitch_15
    .end packed-switch
.end method
